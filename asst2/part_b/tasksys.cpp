#include "tasksys.h"
#include <cassert>

IRunnable::~IRunnable() {}

ITaskSystem::ITaskSystem(int num_threads) {}
ITaskSystem::~ITaskSystem() {}

/*
 * ================================================================
 * Serial task system implementation
 * ================================================================
 */

const char *TaskSystemSerial::name() { return "Serial"; }

TaskSystemSerial::TaskSystemSerial(int num_threads)
    : ITaskSystem(num_threads) {}

TaskSystemSerial::~TaskSystemSerial() {}

void TaskSystemSerial::run(IRunnable *runnable, int num_total_tasks) {
  for (int i = 0; i < num_total_tasks; i++) {
    runnable->runTask(i, num_total_tasks);
  }
}

TaskID TaskSystemSerial::runAsyncWithDeps(IRunnable *runnable,
                                          int num_total_tasks,
                                          const std::vector<TaskID> &deps) {
  for (int i = 0; i < num_total_tasks; i++) {
    runnable->runTask(i, num_total_tasks);
  }

  return 0;
}

void TaskSystemSerial::sync() { return; }

/*
 * ================================================================
 * Parallel Task System Implementation
 * ================================================================
 */

const char *TaskSystemParallelSpawn::name() {
  return "Parallel + Always Spawn";
}

TaskSystemParallelSpawn::TaskSystemParallelSpawn(int num_threads)
    : ITaskSystem(num_threads) {
  // NOTE: CS149 students are not expected to implement TaskSystemParallelSpawn
  // in Part B.
}

TaskSystemParallelSpawn::~TaskSystemParallelSpawn() {}

void TaskSystemParallelSpawn::run(IRunnable *runnable, int num_total_tasks) {
  // NOTE: CS149 students are not expected to implement TaskSystemParallelSpawn
  // in Part B.
  for (int i = 0; i < num_total_tasks; i++) {
    runnable->runTask(i, num_total_tasks);
  }
}

TaskID TaskSystemParallelSpawn::runAsyncWithDeps(
    IRunnable *runnable, int num_total_tasks, const std::vector<TaskID> &deps) {
  // NOTE: CS149 students are not expected to implement TaskSystemParallelSpawn
  // in Part B.
  for (int i = 0; i < num_total_tasks; i++) {
    runnable->runTask(i, num_total_tasks);
  }

  return 0;
}

void TaskSystemParallelSpawn::sync() {
  // NOTE: CS149 students are not expected to implement TaskSystemParallelSpawn
  // in Part B.
  return;
}

/*
 * ================================================================
 * Parallel Thread Pool Spinning Task System Implementation
 * ================================================================
 */

const char *TaskSystemParallelThreadPoolSpinning::name() {
  return "Parallel + Thread Pool + Spin";
}

TaskSystemParallelThreadPoolSpinning::TaskSystemParallelThreadPoolSpinning(
    int num_threads)
    : ITaskSystem(num_threads) {
  // NOTE: CS149 students are not expected to implement TaskSystemParallelSpawn
  // in Part B.
}

TaskSystemParallelThreadPoolSpinning::~TaskSystemParallelThreadPoolSpinning() {}

void TaskSystemParallelThreadPoolSpinning::run(IRunnable *runnable,
                                               int num_total_tasks) {
  // NOTE: CS149 students are not expected to implement TaskSystemParallelSpawn
  // in Part B.
  for (int i = 0; i < num_total_tasks; i++) {
    runnable->runTask(i, num_total_tasks);
  }
}

TaskID TaskSystemParallelThreadPoolSpinning::runAsyncWithDeps(
    IRunnable *runnable, int num_total_tasks, const std::vector<TaskID> &deps) {
  // NOTE: CS149 students are not expected to implement TaskSystemParallelSpawn
  // in Part B.
  for (int i = 0; i < num_total_tasks; i++) {
    runnable->runTask(i, num_total_tasks);
  }

  return 0;
}

void TaskSystemParallelThreadPoolSpinning::sync() {
  // NOTE: CS149 students are not expected to implement TaskSystemParallelSpawn
  // in Part B.
  return;
}

/*
 * ================================================================
 * Parallel Thread Pool Sleeping Task System Implementation
 * ================================================================
 */

const char *TaskSystemParallelThreadPoolSleeping::name() {
  return "Parallel + Thread Pool + Sleep";
}

TaskSystemParallelThreadPoolSleeping::TaskSystemParallelThreadPoolSleeping(
    int num_threads)
    : ITaskSystem(num_threads), stop_(false), global_taskid_(0),
      all_undone_task_(0) {
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
        if (tasks_.empty()) {
          cv_worker_.wait(lk, [&]() { return stop_ || !tasks_.empty(); });
        }
        if (stop_) {
            return;
        }

        auto task = tasks_.front();
        tasks_.pop();
        lk.unlock();

        std::get<1>(task)->runTask(std::get<2>(task), std::get<3>(task));

        {
          std::lock_guard<std::mutex> lk_graph(lk_graph_);
          TaskID task_id = std::get<0>(task);
          work_done_[task_id]++;
          if (work_done_[task_id] == tasks_info_[task_id].second) {
            for (auto x : graph_[task_id]) {
              --in_degree_[x];
              if (in_degree_[x] == 0) {
                // x依赖的任务已经全部执行完毕
                IRunnable *runnable = tasks_info_[x].first;
                int num_total_task = tasks_info_[x].second;
                std::lock_guard<std::mutex> lk(lk_);
                for (int i = 0; i < num_total_task; ++i) {
                  tasks_.push({x, runnable, i, num_total_task});
                }
                cv_worker_.notify_all();
              }
            }
          }

          all_undone_task_--;
          if (all_undone_task_ == 0) {
            cv_main_.notify_all();
          }
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
  sync();
  stop_ = true;
  cv_worker_.notify_all();
  for (auto &thread : threads_) {
    thread.join();
  }
  assert(all_undone_task_ == 0);
  printf("Destructor called!\n");
}

void TaskSystemParallelThreadPoolSleeping::run(IRunnable *runnable,
                                               int num_total_tasks) {

  //
  // TODO: CS149 students will modify the implementation of this
  // method in Parts A and B.  The implementation provided below runs all
  // tasks sequentially on the calling thread.
  //
  runAsyncWithDeps(runnable, num_total_tasks, {});
  sync();
}

TaskID TaskSystemParallelThreadPoolSleeping::runAsyncWithDeps(
    IRunnable *runnable, int num_total_tasks, const std::vector<TaskID> &deps) {

  //
  // TODO: CS149 students will implement this method in Part B.
  //
  TaskID cur_task_id = global_taskid_++;
  bool ok = true;
  {
    std::lock_guard<std::mutex> lk(lk_graph_);
    tasks_info_[cur_task_id] = {runnable, num_total_tasks};
    // 维护依存图
    all_undone_task_ += num_total_tasks;
    for (auto x : deps) {
      int num_total_task = tasks_info_[x].second;
      int num_done_task = work_done_[x];
      if (num_total_task != num_done_task) {
        graph_[x].push_back(cur_task_id);
        ++in_degree_[cur_task_id];
        ok = false;
      }
    }
  }

  // 如果自己依赖的任务全部完成的话，直接讲自己放入队列中
  if (ok) {
    std::lock_guard<std::mutex> lk(lk_);
    for (int i = 0; i < num_total_tasks; ++i) {
      tasks_.push({cur_task_id, runnable, i, num_total_tasks});
    }
    cv_worker_.notify_all();
  }
  return cur_task_id;
}

void TaskSystemParallelThreadPoolSleeping::sync() {

  //
  // TODO: CS149 students will modify the implementation of this method in Part
  // B.
  //

  {
    std::unique_lock<std::mutex> lk(lk_graph_);
    if (all_undone_task_ != 0) {
      cv_main_.wait(lk, [&]() { return all_undone_task_ == 0; });
    }
  }

  return;
}
