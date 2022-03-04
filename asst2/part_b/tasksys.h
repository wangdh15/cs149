#ifndef _TASKSYS_H
#define _TASKSYS_H

#include "itasksys.h"
#include <atomic>
#include <queue>
#include <vector>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <unordered_map>

/*
 * TaskSystemSerial: This class is the student's implementation of a
 * serial task execution engine.  See definition of ITaskSystem in
 * itasksys.h for documentation of the ITaskSystem interface.
 */
class TaskSystemSerial: public ITaskSystem {
    public:
        TaskSystemSerial(int num_threads);
        ~TaskSystemSerial();
        const char* name();
        void run(IRunnable* runnable, int num_total_tasks);
        TaskID runAsyncWithDeps(IRunnable* runnable, int num_total_tasks,
                                const std::vector<TaskID>& deps);
        void sync();
};

/*
 * TaskSystemParallelSpawn: This class is the student's implementation of a
 * parallel task execution engine that spawns threads in every run()
 * call.  See definition of ITaskSystem in itasksys.h for documentation
 * of the ITaskSystem interface.
 */
class TaskSystemParallelSpawn: public ITaskSystem {
    public:
        TaskSystemParallelSpawn(int num_threads);
        ~TaskSystemParallelSpawn();
        const char* name();
        void run(IRunnable* runnable, int num_total_tasks);
        TaskID runAsyncWithDeps(IRunnable* runnable, int num_total_tasks,
                                const std::vector<TaskID>& deps);
        void sync();
private:
    int num_thread_;
    std::atomic<int> task_idx_;
};

/*
 * TaskSystemParallelThreadPoolSpinning: This class is the student's
 * implementation of a parallel task execution engine that uses a
 * thread pool. See definition of ITaskSystem in itasksys.h for
 * documentation of the ITaskSystem interface.
 */
class TaskSystemParallelThreadPoolSpinning: public ITaskSystem {
    public:
        TaskSystemParallelThreadPoolSpinning(int num_threads);
        ~TaskSystemParallelThreadPoolSpinning();
        const char* name();
        void run(IRunnable* runnable, int num_total_tasks);
        TaskID runAsyncWithDeps(IRunnable* runnable, int num_total_tasks,
                                const std::vector<TaskID>& deps);
        void sync();
private:
    std::vector<std::thread> threads_;
    int num_total_tasks_;
    IRunnable *runnable_;
    std::queue<int> task_index_;
    std::mutex lk_;
    bool stop_;
    std::atomic<int> task_done_;
};

/*
 * TaskSystemParallelThreadPoolSleeping: This class is the student's
 * optimized implementation of a parallel task execution engine that uses
 * a thread pool. See definition of ITaskSystem in
 * itasksys.h for documentation of the ITaskSystem interface.
 */
class TaskSystemParallelThreadPoolSleeping: public ITaskSystem {
    public:
        TaskSystemParallelThreadPoolSleeping(int num_threads);
        ~TaskSystemParallelThreadPoolSleeping();
        const char* name();
        void run(IRunnable* runnable, int num_total_tasks);
        TaskID runAsyncWithDeps(IRunnable* runnable, int num_total_tasks,
                                const std::vector<TaskID>& deps);
        void sync();
private:

    struct TaskInfo {
        TaskID id; // task的ID
        IRunnable* runnable;
        int num_total_task; // 所有的任务数
        int num_done_task; // 已经完成的任务数
        bool done() const {
            return num_total_task == num_done_task;
        }
    };


    struct WorkInfo {
        TaskID id; // work所属的task
        IRunnable* runnable;
        int cur_index;
        int num_total_task;
    };

    bool stop_;

    TaskID global_task_id_;
    std::mutex lk_;
    std::condition_variable cv_worker_; // worker线程等待的队列
    std::condition_variable cv_main_; // sync线程等待的队列

    // 所有加入，但是还没有完成的task的总数，包括不满足条件的
    int num_all_undone_task;

    std::vector<std::thread> threads_; // 所有的worker线程
    std::unordered_map<TaskID, std::vector<int>> graph_; // 维护当前图
    std::unordered_map<TaskID, int> in_degree_; // 每个task的入度
    std::queue<WorkInfo> tasks_; //  所有需要被执行的任务
    std::unordered_map<TaskID, TaskInfo> task_info_; // 每个任务的信息

};

#endif
