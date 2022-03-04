#include "tasksys.h"
#include <cassert>
#include <thread>


IRunnable::~IRunnable() {}

ITaskSystem::ITaskSystem(int num_threads) {}
ITaskSystem::~ITaskSystem() {}

/*
 * ================================================================
 * Serial task system implementation
 * ================================================================
 */

const char* TaskSystemSerial::name() {
    return "Serial";
}

TaskSystemSerial::TaskSystemSerial(int num_threads): ITaskSystem(num_threads) {
}

TaskSystemSerial::~TaskSystemSerial() {}

void TaskSystemSerial::run(IRunnable* runnable, int num_total_tasks) {
    for (int i = 0; i < num_total_tasks; i++) {
        runnable->runTask(i, num_total_tasks);
    }
}

TaskID TaskSystemSerial::runAsyncWithDeps(IRunnable* runnable, int num_total_tasks,
                                          const std::vector<TaskID>& deps) {
    return 0;
}

void TaskSystemSerial::sync() {
    return;
}

/*
 * ================================================================
 * Parallel Task System Implementation
 * ================================================================
 */

const char* TaskSystemParallelSpawn::name() {
    return "Parallel + Always Spawn";
}

TaskSystemParallelSpawn::TaskSystemParallelSpawn(int num_threads): ITaskSystem(num_threads), num_thread_(num_threads), task_idx_(0) {
    //
    // TODO: CS149 student implementations may decide to perform setup
    // operations (such as thread pool construction) here.
    // Implementations are free to add new class member variables
    // (requiring changes to tasksys.h).
    //
}

TaskSystemParallelSpawn::~TaskSystemParallelSpawn() {}

void TaskSystemParallelSpawn::run(IRunnable* runnable, int num_total_tasks) {


    //
    // TODO: CS149 students will modify the implementation of this
    // method in Part A.  The implementation provided below runs all
    // tasks sequentially on the calling thread.
    //

    std::vector<std::thread> threads(num_thread_);
    task_idx_ = 0;
    for (int i = 0; i < num_thread_; ++i) {
        threads[i] = std::thread([&](){
            while (true) {
                int cur_task_index = task_idx_++;
                if (cur_task_index >= num_total_tasks) {
                    return;
                }
                runnable->runTask(cur_task_index, num_total_tasks);
            }
        });
    }
    for (int i = 0; i < num_thread_; ++i) {
        threads[i].join();
    }
}

TaskID TaskSystemParallelSpawn::runAsyncWithDeps(IRunnable* runnable, int num_total_tasks,
                                                 const std::vector<TaskID>& deps) {
    return 0;
}

void TaskSystemParallelSpawn::sync() {
    return;
}

/*
 * ================================================================
 * Parallel Thread Pool Spinning Task System Implementation
 * ================================================================
 */

const char* TaskSystemParallelThreadPoolSpinning::name() {
    return "Parallel + Thread Pool + Spin";
}

TaskSystemParallelThreadPoolSpinning::TaskSystemParallelThreadPoolSpinning(int num_threads): ITaskSystem(num_threads),
    runnable_(nullptr), stop_(false), task_done_(0) {
    //
    // TODO: CS149 student implementations may decide to perform setup
    // operations (such as thread pool construction) here.
    // Implementations are free to add new class member variables
    // (requiring changes to tasksys.h).
    //
    threads_.reserve(num_threads);
    for (int i = 0; i < num_threads; ++i) {
       threads_.emplace_back([&]() {
           while (!stop_) {
            int task_index = -1;
            {
                std::lock_guard<std::mutex> lk(lk_);
                if (!task_index_.empty()) {
                    task_index = task_index_.front();
                    task_index_.pop();
                }
            }
            if (task_index != -1) {
                runnable_->runTask(task_index, num_total_tasks_);
                ++task_done_;
            }
       }});
    }
}

TaskSystemParallelThreadPoolSpinning::~TaskSystemParallelThreadPoolSpinning() {
    stop_ = true;
    for (auto& thread : threads_) {
        thread.join();
    }
}

void TaskSystemParallelThreadPoolSpinning::run(IRunnable* runnable, int num_total_tasks) {


    //
    // TODO: CS149 students will modify the implementation of this
    // method in Part A.  The implementation provided below runs all
    // tasks sequentially on the calling thread.
    //
    num_total_tasks_ = num_total_tasks;
    runnable_ = runnable;
    task_done_ = 0;
    {
        std::lock_guard<std::mutex> lk(lk_);
        assert(task_index_.empty());
        for (int i = 0; i < num_total_tasks; ++i) {
            task_index_.push(i);
        }
    }
    // 等待所有的任务完成
    while (task_done_ != num_total_tasks);
}

TaskID TaskSystemParallelThreadPoolSpinning::runAsyncWithDeps(IRunnable* runnable, int num_total_tasks,
                                                              const std::vector<TaskID>& deps) {
    return 0;
}

void TaskSystemParallelThreadPoolSpinning::sync() {
    return;
}

/*
 * ================================================================
 * Parallel Thread Pool Sleeping Task System Implementation
 * ================================================================
 */

const char* TaskSystemParallelThreadPoolSleeping::name() {
    return "Parallel + Thread Pool + Sleep";
}

TaskSystemParallelThreadPoolSleeping::TaskSystemParallelThreadPoolSleeping(int num_threads): ITaskSystem(num_threads),
    num_total_tasks_(0),
    runnable_(nullptr),
    stop_(false),
    task_done_(0) {
    //
    // TODO: CS149 student implementations may decide to perform setup
    // operations (such as thread pool construction) here.
    // Implementations are free to add new class member variables
    // (requiring changes to tasksys.h).
    //
    threads_.reserve(num_threads);
    for (int i = 0; i < num_threads; ++i) {
        threads_.emplace_back([&]() {
            while (!stop_) {

                std::unique_lock<std::mutex> lk(lk_);
                // 等待，直到自己被停止或者有新的任务要做
                if (task_index_.empty()) {
                    cv_worker_.wait(lk, [&]() {
                        return stop_ || !task_index_.empty();
                    });
                }
                if (stop_) {
                    return;
                }
                int task_index = task_index_.front();
                task_index_.pop();
                // printf("Pop %d task fron queue\n", task_index);
                lk.unlock();
                runnable_->runTask(task_index, num_total_tasks_);
                ++task_done_;
                // 如果所有的work都做完后，就唤醒等待的主线程
                if (task_done_ == num_total_tasks_) {
                    cv_main_.notify_one();
                }
            }
        });
    }
}

TaskSystemParallelThreadPoolSleeping::~TaskSystemParallelThreadPoolSleeping() {
    //
    // TODO: CS149 student implementations may decide to perform cleanup
    // operations (such as thread pool shutdown construction) here.
    // Implementations are free to add new class member variables
    // (requiring changes to tasksys.h).
    //
    stop_ = true;
    cv_worker_.notify_all();
    for (auto& thread : threads_) {
        thread.join();
    }
}

void TaskSystemParallelThreadPoolSleeping::run(IRunnable* runnable, int num_total_tasks) {


    //
    // TODO: CS149 students will modify the implementation of this
    // method in Parts A and B.  The implementation provided below runs all
    // tasks sequentially on the calling thread.
    //
    runnable_ = runnable;
    task_done_ = 0;
    num_total_tasks_ = num_total_tasks;
    {
        std::lock_guard<std::mutex> lk(lk_);
        assert(task_index_.empty());
        for (int i = 0; i < num_total_tasks; ++i) {
            task_index_.push(i);
        }
        // printf("Main thread: enqueue %d tasks\n", num_total_tasks);
    }
    cv_worker_.notify_all();
    std::unique_lock<std::mutex> lk(lk_);
    if (task_done_ != num_total_tasks) {
        cv_main_.wait(lk, [&]() {
            return task_done_ == num_total_tasks;
        });
    }
    // printf("Main thread is notified\n");
}

TaskID TaskSystemParallelThreadPoolSleeping::runAsyncWithDeps(IRunnable* runnable, int num_total_tasks,
                                                    const std::vector<TaskID>& deps) {


    //
    // TODO: CS149 students will implement this method in Part B.
    //

    return 0;
}

void TaskSystemParallelThreadPoolSleeping::sync() {

    //
    // TODO: CS149 students will modify the implementation of this method in Part B.
    //

    return;
}
