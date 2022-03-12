#include "bfs.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <cstddef>
#include <omp.h>

#include "../common/CycleTimer.h"
#include "../common/graph.h"

#define ROOT_NODE_ID 0
#define NOT_VISITED_MARKER -1
// #define VERBOSE

void vertex_set_clear(vertex_set* list) {
    list->count = 0;
}

void vertex_set_init(vertex_set* list, int count) {
    list->max_vertices = count;
    list->vertices = (int*)malloc(sizeof(int) * list->max_vertices);
    vertex_set_clear(list);
}

void vertex_set_free(vertex_set* list) {
    free(list->vertices);
}

// Take one step of "top-down" BFS.  For each vertex on the frontier,
// follow all outgoing edges, and add all neighboring vertices to the
// new_frontier.
void top_down_step(
    Graph g,
    vertex_set* frontier,
    vertex_set* new_frontier,
    int* distances)
{

    #pragma omp parallel  // 分配若干个线程
    {
        // 每个线程拥有一份变量
        vertex_set local_list;
        vertex_set_init(&local_list, g->num_edges);

        #pragma omp for // 将下面的for循环的任务分配个不同的线程处理
        for (int i=0; i<frontier->count; i++) {
            int node = frontier->vertices[i];
            int start_edge = g->outgoing_starts[node];
            int end_edge = (node == g->num_nodes - 1)
                            ? g->num_edges
                            : g->outgoing_starts[node + 1];

            // attempt to add all neighbors to the new frontier
            // #pragma omp parallel for

            int new_dis = distances[node] + 1;
            for (int neighbor=start_edge; neighbor<end_edge; neighbor++) {
                int outgoing = g->outgoing_edges[neighbor];
                if (distances[outgoing] == NOT_VISITED_MARKER && __sync_bool_compare_and_swap(&distances[outgoing], NOT_VISITED_MARKER, new_dis)) {  // 如果当前线程更新了的话，就加入到本线程的队列中
                    local_list.vertices[local_list.count++] = outgoing;
                }
            }
        }

        // int start_idx = __sync_fetch_and_add(&new_frontier->count, local_list.count);
        // 将本线程修改的内容放到全局的数组中，这个地方预申请全局数组的一部分区间
        int start_idx = new_frontier->count;
        while (!__sync_bool_compare_and_swap(&new_frontier->count, start_idx, start_idx + local_list.count)) {
            start_idx = new_frontier->count;
        }
        memcpy(new_frontier->vertices + start_idx, local_list.vertices, sizeof(int) * local_list.count);
        vertex_set_free(&local_list);
    }
}

// Implements top-down BFS.
//
// Result of execution is that, for each node in the graph, the
// distance to the root is stored in sol.distances.
void bfs_top_down(Graph graph, solution* sol) {

    vertex_set list1;
    vertex_set list2;
    vertex_set_init(&list1, graph->num_nodes);
    vertex_set_init(&list2, graph->num_nodes);

    vertex_set* frontier = &list1;
    vertex_set* new_frontier = &list2;

    // initialize all nodes to NOT_VISITED
    for (int i=0; i<graph->num_nodes; i++)
        sol->distances[i] = NOT_VISITED_MARKER;

    // setup frontier with the root node
    frontier->vertices[frontier->count++] = ROOT_NODE_ID;
    sol->distances[ROOT_NODE_ID] = 0;

    while (frontier->count != 0) {

#ifdef VERBOSE
        double start_time = CycleTimer::currentSeconds();
#endif

        vertex_set_clear(new_frontier);

        // top_down_step_ref(graph, frontier, new_frontier, sol->distances);
        top_down_step(graph, frontier, new_frontier, sol->distances);

#ifdef VERBOSE
    double end_time = CycleTimer::currentSeconds();
    printf("frontier=%-10d %.4f sec\n", frontier->count, end_time - start_time);
#endif

        // swap pointers
        vertex_set* tmp = frontier;
        frontier = new_frontier;
        new_frontier = tmp;
    }
}

void bfs_bottom_up(Graph graph, solution* sol)
{
    // CS149 students:
    //
    // You will need to implement the "bottom up" BFS here as
    // described in the handout.
    //
    // As a result of your code's execution, sol.distances should be
    // correctly populated for all nodes in the graph.
    //
    // As was done in the top-down case, you may wish to organize your
    // code by creating subroutine bottom_up_step() that is called in
    // each step of the BFS process.
}

void bfs_hybrid(Graph graph, solution* sol)
{
    // CS149 students:
    //
    // You will need to implement the "hybrid" BFS here as
    // described in the handout.
}
