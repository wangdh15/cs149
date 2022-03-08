#include <stdio.h>

#include <cuda.h>
#include <cuda_runtime.h>

#include <driver_functions.h>

#include <thrust/scan.h>
#include <thrust/device_ptr.h>
#include <thrust/device_malloc.h>
#include <thrust/device_free.h>

#include "CycleTimer.h"
// #define DEBUG
#define THREADS_PER_BLOCK 256


// helper function to round an integer up to the next power of 2
static inline int nextPow2(int n) {
    n--;
    n |= n >> 1;
    n |= n >> 2;
    n |= n >> 4;
    n |= n >> 8;
    n |= n >> 16;
    n++;
    return n;
}

// exclusive_scan --
//
// Implementation of an exclusive scan on global memory array `input`,
// with results placed in global memory `result`.
//
// N is the logical size of the input and output arrays, however
// students can assume that both the start and result arrays we
// allocated with next power-of-two sizes as described by the comments
// in cudaScan().  This is helpful, since your parallel scan
// will likely write to memory locations beyond N, but of course not
// greater than N rounded up to the next power of 2.
//
// Also, as per the comments in cudaScan(), you can implement an
// "in-place" scan, since the timing harness makes a copy of input and
// places it in result

__global__ void scan_up(int* result, int d) {
    int idx_plus_1 = (blockIdx.x * blockDim.x + threadIdx.x + 1) * d;
    result[idx_plus_1 - 1] += result[idx_plus_1 - d / 2 - 1];
}

__global__ void reset_zero(int* result, int N) {
    result[N - 1] = 0;
}

__global__ void scan_down(int* result, int d) {
    int idx_plus_1 = (blockIdx.x * blockDim.x + threadIdx.x + 1) * d;
        int t = result[idx_plus_1 - 1];
        result[idx_plus_1 - 1] += result[idx_plus_1 - d / 2 - 1];
        result[idx_plus_1 - d / 2 - 1] = t;
}

std::pair<int, int> get_param(int N, int d) {
        int thread_num = N / d;
        int num_blocks;
        int thread_per_block;
        // 如果需要的线程数少于THREADS_PER_BLOCK，就分配一个block
        if (thread_num <= THREADS_PER_BLOCK) {
            num_blocks = 1;
            thread_per_block = thread_num;
        } else {
            num_blocks = (thread_num + THREADS_PER_BLOCK - 1) / THREADS_PER_BLOCK;
            thread_per_block = THREADS_PER_BLOCK;
        }
        return {num_blocks, thread_per_block};
}


void exclusive_scan(int* input, int N, int* result)
{
    // CS149 TODO:
    //
    // Implement your exclusive scan implementation here.  Keep input
    // mind that although the arguments to this function are device
    // allocated arrays, this is a function that is running in a thread
    // on the CPU.  Your implementation will need to make multiple calls
    // to CUDA kernel functions (that you must write) to implement the
    // scan.
    N = nextPow2(N);
    // int num_blocks = (N + THREADS_PER_BLOCK - 1) / THREADS_PER_BLOCK;
    // up
    for (int d = 2; d <= N; d *= 2) {
        auto param = get_param(N, d);
        #ifdef DEBUG
        printf("%d blocks, %d thread !\n", param.first, param.second);
        #endif
        scan_up<<<param.first, param.second>>>(result, d);
        cudaDeviceSynchronize();
    }

    reset_zero<<<1, 1>>>(result, N);

    cudaDeviceSynchronize();

    for (int d = N; d >= 2; d /= 2) {
        auto param = get_param(N, d);
        #ifdef DEBUG
        printf("%d blocks, %d thread !\n", param.first, param.second);
        #endif
        scan_down<<<param.first, param.second>>>(result, d);
        cudaDeviceSynchronize();
    }
}


//
// cudaScan --
//
// This function is a timing wrapper around the student's
// implementation of scan - it copies the input to the GPU
// and times the invocation of the exclusive_scan() function
// above. Students should not modify it.
double cudaScan(int* inarray, int* end, int* resultarray)
{
    int* device_result;
    int* device_input;
    int N = end - inarray;

    // This code rounds the arrays provided to exclusive_scan up
    // to a power of 2, but elements after the end of the original
    // input are left uninitialized and not checked for correctness.
    //
    // Student implementations of exclusive_scan may assume an array's
    // allocated length is a power of 2 for simplicity. This will
    // result in extra work on non-power-of-2 inputs, but it's worth
    // the simplicity of a power of two only solution.

    int rounded_length = nextPow2(end - inarray);

    cudaMalloc((void **)&device_result, sizeof(int) * rounded_length);
    cudaMalloc((void **)&device_input, sizeof(int) * rounded_length);

    // For convenience, both the input and output vectors on the
    // device are initialized to the input values. This means that
    // students are free to implement an in-place scan on the result
    // vector if desired.  If you do this, you will need to keep this
    // in mind when calling exclusive_scan from find_repeats.
    cudaMemcpy(device_input, inarray, (end - inarray) * sizeof(int), cudaMemcpyHostToDevice);
    cudaMemcpy(device_result, inarray, (end - inarray) * sizeof(int), cudaMemcpyHostToDevice);

    double startTime = CycleTimer::currentSeconds();

    exclusive_scan(device_input, N, device_result);

    // Wait for completion
    cudaDeviceSynchronize();
    double endTime = CycleTimer::currentSeconds();

    cudaMemcpy(resultarray, device_result, (end - inarray) * sizeof(int), cudaMemcpyDeviceToHost);

    double overallDuration = endTime - startTime;
    return overallDuration;
}


// cudaScanThrust --
//
// Wrapper around the Thrust library's exclusive scan function
// As above in cudaScan(), this function copies the input to the GPU
// and times only the execution of the scan itself.
//
// Students are not expected to produce implementations that achieve
// performance that is competition to the Thrust version, but it is fun to try.
double cudaScanThrust(int* inarray, int* end, int* resultarray) {

    int length = end - inarray;
    thrust::device_ptr<int> d_input = thrust::device_malloc<int>(length);
    thrust::device_ptr<int> d_output = thrust::device_malloc<int>(length);

    cudaMemcpy(d_input.get(), inarray, length * sizeof(int), cudaMemcpyHostToDevice);

    double startTime = CycleTimer::currentSeconds();

    thrust::exclusive_scan(d_input, d_input + length, d_output);

    cudaDeviceSynchronize();
    double endTime = CycleTimer::currentSeconds();

    cudaMemcpy(resultarray, d_output.get(), length * sizeof(int), cudaMemcpyDeviceToHost);

    thrust::device_free(d_input);
    thrust::device_free(d_output);

    double overallDuration = endTime - startTime;
    return overallDuration;
}


__global__ void comp(int* input, int* output, int N) {

    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    if (idx < N - 1) {
        output[idx] = input[idx] == input[idx + 1];
    } else {
        output[idx] = 0;
    }
    #ifdef DEBUG
    if (output[idx] == 1) {
        printf("cmp: idx: %d, value: %d\n", idx, input[idx]);
    }
    #endif
}

__global__ void fill(int* input, int* prefix_idx, int N, int *output) {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    if (idx < N - 1 && prefix_idx[idx + 1] > prefix_idx[idx]) {
        output[prefix_idx[idx]] = idx;
        #ifdef DEBUG
        printf("fill: idx: %d, prefix_idx: %d, value: %d\n", idx, prefix_idx[idx], input[idx]);
        #endif
    }
}


// find_repeats --
//
// Given an array of integers `device_input`, returns an array of all
// indices `i` for which `device_input[i] == device_input[i+1]`.
//
// Returns the total number of pairs found
int find_repeats(int* device_input, int length, int* device_output) {

    // CS149 TODO:
    //
    // Implement this function. You will probably want to
    // make use of one or more calls to exclusive_scan(), as well as
    // additional CUDA kernel launches.
    //
    // Note: As in the scan code, the calling code ensures that
    // allocated arrays are a power of 2 in size, so you can use your
    // exclusive_scan function with them. However, your implementation
    // must ensure that the results of find_repeats are correct given
    // the actual array length.

    int len_pow2 = nextPow2(length);

    int* prefix_idx;

    int num_block;
    int threads_per_block;
    if (len_pow2 <= THREADS_PER_BLOCK) {
        num_block = 1;
        threads_per_block = len_pow2;
    }  else {
        num_block = (len_pow2 + THREADS_PER_BLOCK - 1) / THREADS_PER_BLOCK;
        threads_per_block = THREADS_PER_BLOCK;
    }

    #ifdef DEBUG
    printf("block: %d, thread: %d\n", num_block, threads_per_block);
    #endif

    cudaMalloc(&prefix_idx, len_pow2 * sizeof(int));
    comp<<<num_block, threads_per_block>>>(device_input, prefix_idx, length);  // 求每一位是否满足条件
    cudaDeviceSynchronize();
    exclusive_scan(prefix_idx, len_pow2 ,prefix_idx); // 求前缀和，代表在结果中的下标
    fill<<<num_block, threads_per_block>>>(device_input, prefix_idx, len_pow2, device_output);
    cudaDeviceSynchronize();
    int ret;
    cudaMemcpy(&ret, prefix_idx + length - 1, sizeof(int), cudaMemcpyDeviceToHost);
    return ret;
}


//
// cudaFindRepeats --
//
// Timing wrapper around find_repeats. You should not modify this function.
double cudaFindRepeats(int *input, int length, int *output, int *output_length) {

    int *device_input;
    int *device_output;
    int rounded_length = nextPow2(length);

    cudaMalloc((void **)&device_input, rounded_length * sizeof(int));
    cudaMalloc((void **)&device_output, rounded_length * sizeof(int));
    cudaMemcpy(device_input, input, length * sizeof(int), cudaMemcpyHostToDevice);

    cudaDeviceSynchronize();
    double startTime = CycleTimer::currentSeconds();

    int result = find_repeats(device_input, length, device_output);

    cudaDeviceSynchronize();
    double endTime = CycleTimer::currentSeconds();

    // set output count and results array
    *output_length = result;
    cudaMemcpy(output, device_output, length * sizeof(int), cudaMemcpyDeviceToHost);

    cudaFree(device_input);
    cudaFree(device_output);

    float duration = endTime - startTime;
    return duration;
}



void printCudaInfo()
{
    int deviceCount = 0;
    cudaError_t err = cudaGetDeviceCount(&deviceCount);

    printf("---------------------------------------------------------\n");
    printf("Found %d CUDA devices\n", deviceCount);

    for (int i=0; i<deviceCount; i++)
    {
        cudaDeviceProp deviceProps;
        cudaGetDeviceProperties(&deviceProps, i);
        printf("Device %d: %s\n", i, deviceProps.name);
        printf("   SMs:        %d\n", deviceProps.multiProcessorCount);
        printf("   Global mem: %.0f MB\n",
               static_cast<float>(deviceProps.totalGlobalMem) / (1024 * 1024));
        printf("   CUDA Cap:   %d.%d\n", deviceProps.major, deviceProps.minor);
    }
    printf("---------------------------------------------------------\n");
}
