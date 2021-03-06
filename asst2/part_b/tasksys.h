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
        TaskID id; // task???ID
        IRunnable* runnable;
        int num_total_task; // ??????????????????
        int num_done_work; // ??????task?????????????????????
        TaskInfo(TaskID _id, IRunnable* _runnable, int _num_total_task, int _num_donw_work):
            id(_id), runnable(_runnable), num_total_task(_num_total_task), num_done_work(_num_donw_work) {}
        // std::atomic<int> num_done_work; // ??????task?????????????????????
        // TaskInfo(TaskID _id, IRunnable* _runnable, int _num_total_task):
        //     id(_id), runnable(_runnable), num_total_task(_num_total_task){}
    };


    struct WorkInfo {
        TaskID id; // work?????????task
        int cur_index;
    };

    bool stop_;

    TaskID global_task_id_;
    std::mutex lk_;
    std::condition_variable cv_worker_; // worker?????????????????????
    std::condition_variable cv_main_; // sync?????????????????????

    // ???????????????????????????????????????task????????????????????????????????????
    int num_all_undone_task;

    std::vector<std::thread> threads_; // ?????????worker??????
    std::vector<std::vector<int>> graph_;
    // std::unordered_map<TaskID, std::vector<int>> graph_; // ???????????????
    std::vector<int> in_degree_;
    // std::unordered_map<TaskID, int> in_degree_; // ??????task?????????
    std::queue<WorkInfo> tasks_; //  ??????????????????????????????
    std::vector<TaskInfo> task_info_;
    // std::unordered_map<TaskID, TaskInfo> task_info_; // ?????????????????????
    static constexpr int N = 1024;
};

#endif
