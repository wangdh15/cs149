#ifndef _TASKSYS_H
#define _TASKSYS_H

#include "itasksys.h"
#include <atomic>
#include <condition_variable>
#include <mutex>
#include <queue>
#include <thread>
#include <unordered_map>
#include <vector>

/*
 * TaskSystemSerial: This class is the student's implementation of a
 * serial task execution engine.  See definition of ITaskSystem in
 * itasksys.h for documentation of the ITaskSystem interface.
 */
class TaskSystemSerial : public ITaskSystem {
public:
  TaskSystemSerial(int num_threads);
  ~TaskSystemSerial();
  const char *name();
  void run(IRunnable *runnable, int num_total_tasks);
  TaskID runAsyncWithDeps(IRunnable *runnable, int num_total_tasks,
                          const std::vector<TaskID> &deps);
  void sync();
};

/*
 * TaskSystemParallelSpawn: This class is the student's implementation of a
 * parallel task execution engine that spawns threads in every run()
 * call.  See definition of ITaskSystem in itasksys.h for documentation
 * of the ITaskSystem interface.
 */
class TaskSystemParallelSpawn : public ITaskSystem {
public:
  TaskSystemParallelSpawn(int num_threads);
  ~TaskSystemParallelSpawn();
  const char *name();
  void run(IRunnable *runnable, int num_total_tasks);
  TaskID runAsyncWithDeps(IRunnable *runnable, int num_total_tasks,
                          const std::vector<TaskID> &deps);
  void sync();
};

/*
 * TaskSystemParallelThreadPoolSpinning: This class is the student's
 * implementation of a parallel task execution engine that uses a
 * thread pool. See definition of ITaskSystem in itasksys.h for
 * documentation of the ITaskSystem interface.
 */
class TaskSystemParallelThreadPoolSpinning : public ITaskSystem {
public:
  TaskSystemParallelThreadPoolSpinning(int num_threads);
  ~TaskSystemParallelThreadPoolSpinning();
  const char *name();
  void run(IRunnable *runnable, int num_total_tasks);
  TaskID runAsyncWithDeps(IRunnable *runnable, int num_total_tasks,
                          const std::vector<TaskID> &deps);
  void sync();
};

/*
 * TaskSystemParallelThreadPoolSleeping: This class is the student's
 * optimized implementation of a parallel task execution engine that uses
 * a thread pool. See definition of ITaskSystem in
 * itasksys.h for documentation of the ITaskSystem interface.
 */
class TaskSystemParallelThreadPoolSleeping : public ITaskSystem {
public:
  TaskSystemParallelThreadPoolSleeping(int num_threads);
  ~TaskSystemParallelThreadPoolSleeping();
  const char *name();
  void run(IRunnable *runnable, int num_total_tasks);
  TaskID runAsyncWithDeps(IRunnable *runnable, int num_total_tasks,
                          const std::vector<TaskID> &deps);
  void sync();

private:
  bool stop_;
  std::atomic<TaskID> global_taskid_;
  std::mutex lk_;
  std::vector<std::thread> threads_;
  std::condition_variable
      cv_worker_; // worker没有任务可以做的时候的的带的信号量
  std::condition_variable cv_main_; // sync等到所有任务结束时等待的信号量

  std::mutex lk_graph_; //  维护依存图的互斥锁，保护下面的变量的互斥访问
  int all_undone_task_; // 所有当前还未完成的任务的数量
  std::unordered_map<TaskID, std::pair<IRunnable *, int>>
      tasks_info_; // 每个task的信息，包含这个task的Runnable和总任务数
  std::unordered_map<TaskID, int>
      in_degree_; // 每个task当前的入读，也就是其依赖的还未完成的任务数
  std::unordered_map<TaskID, std::atomic<int>>
      work_done_; // 每个task已经完成的任务数
  std::queue<std::tuple<TaskID, IRunnable *, int, int>>
      tasks_; // 待被执行的任务
  std::unordered_map<TaskID, std::vector<TaskID>> graph_; // 依赖关系图
};
/*
 1. 添加新任务的时候，检查依赖是否被满足：
    - 依赖的任务结束的个数是否等于总个数
    如果满足的话，直接讲自己加入到待被执行的任务队列中，否则地话维护好依赖关系图
2. 当一个任务完成的时候：
    1. 自增其TaskID的完成个数。
    2.
如果发现自己被完成了，则将自己的儿子的度减一，如果发现自己的儿子可以被执行了，就将其添加到可执行队列中。
    如果执行完毕后向队列中增加了元素，就唤醒worker_cv上的所有线程

*/
#endif
