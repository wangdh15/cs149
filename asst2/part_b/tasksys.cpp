#include "tasksys.h"
#include <cassert>
#include <thread>

// #define DEBUG


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
    run(runnable, num_total_tasks);
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
    run(runnable, num_total_tasks);
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
    run(runnable, num_total_tasks);
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
    stop_(false),
    global_task_id_(0),
    num_all_undone_task(0) {
    //
    // TODO: CS149 student implementations may decide to perform setup
    // operations (such as thread pool construction) here.
    // Implementations are free to add new class member variables
    // (requiring changes to tasksys.h).
    //
    threads_.reserve(num_threads);
    graph_.reserve(N);
    in_degree_.reserve(N);
    task_info_.reserve(N);

    auto worker = [&]() {
        IRunnable *runnable;
        int cur_index;
        TaskID task_id;
        while (!stop_) {

            std::unique_lock<std::mutex> lk(lk_);
            if (tasks_.empty()) {
                cv_worker_.wait(lk, [&]() {
                    return stop_ || !tasks_.empty();
                });
            }

            if (stop_) {
                return;
            }

            auto& work = tasks_.front();
            task_id = work.id;
            runnable = task_info_[task_id].runnable;
            cur_index = work.cur_index++;
            if (work.cur_index >= task_info_[task_id].num_total_task) {
               tasks_.pop();
            }
            #ifdef DEBUG
            printf("TaskID: %d, cur_index: %d be called\n", task_id, cur_index);
            #endif
            lk.unlock();

            runnable->runTask(cur_index, task_info_[task_id].num_total_task);

            lk.lock();
            task_info_[task_id].num_done_work++;
            if (task_info_[task_id].num_done_work == task_info_[task_id].num_total_task) {
                // lk.lock();
                #ifdef DEBUG
                printf("TaskID: %d Done\n", task_id);
                #endif
                // 当前task的所有work都已经被做完了
                for (auto x : graph_[task_id]) {
                    in_degree_[x]--;
                    if (in_degree_[x] == 0) {

                        #ifdef DEBUG
                        printf("TaskID: %d enqueue\n", x);
                        #endif

                        tasks_.push({x, 0});
                        cv_worker_.notify_all();
                    }
                }
                num_all_undone_task -= 1;
                if (num_all_undone_task == 0) {
                    cv_main_.notify_one();
                }
            }
        }
    };


    for (int i = 0; i < num_threads; ++i) {
        threads_.emplace_back(worker);
    }
}

TaskSystemParallelThreadPoolSleeping::~TaskSystemParallelThreadPoolSleeping() {
    //
    // TODO: CS149 student implementations may decide to perform cleanup
    // operations (such as thread pool shutdown construction) here.
    // Implementations are free to add new class member variables
    // (requiring changes to tasksys.h).
    //
    sync();
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
    runAsyncWithDeps(runnable, num_total_tasks, {});
    sync();
}

TaskID TaskSystemParallelThreadPoolSleeping::runAsyncWithDeps(IRunnable* runnable, int num_total_tasks,
                                                    const std::vector<TaskID>& deps) {


    //
    // TODO: CS149 students will implement this method in Part B.
    //
    std::lock_guard<std::mutex> lk(lk_);
    TaskID cur_task_id = global_task_id_++;

    #ifdef DEBUG
    printf("TaskID: %d Call Async\n", cur_task_id);
    #endif

    task_info_.emplace_back(cur_task_id, runnable, num_total_tasks, 0);
    in_degree_.emplace_back(0);
    graph_.emplace_back();

    #ifdef DEBUG
    assert(task_info_.size() == global_task_id_);
    assert(in_degree_.size() == global_task_id_);
    assert(graph_.size() == global_task_id_);
    #endif

    for (auto x : deps) {
        auto& task = task_info_[x];
        if (task.num_total_task != task.num_done_work) {
            graph_[x].push_back(cur_task_id);
            in_degree_[cur_task_id]++;
        }
    }

    if (in_degree_[cur_task_id] == 0) {

        #ifdef DEBUG
        printf("TaskID: %d, enqueue\n", cur_task_id);
        #endif

        tasks_.push({cur_task_id, 0});
        cv_worker_.notify_all();
    }
    num_all_undone_task += 1;

    return cur_task_id;
}

void TaskSystemParallelThreadPoolSleeping::sync() {

    //
    // TODO: CS149 students will modify the implementation of this method in Part B.
    //
    std::unique_lock<std::mutex> lk(lk_);
    if (num_all_undone_task != 0) {
        cv_main_.wait(lk, [&]() {
            return num_all_undone_task == 0;
        });
    }

    #ifdef DEBUG
    assert(num_all_undone_task == 0);
    #endif

    return;
}
