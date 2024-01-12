#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <time.h>

#define MAX_PROCESSES 10

typedef struct {
    int process_id;
    int priority;
    int quantum;
} Process;

void initializeProcesses(Process processes[], int num_processes) {
    for (int i = 0; i < num_processes; ++i) {
        processes[i].process_id = getpid();
        processes[i].priority = 0; // Initially set to the highest priority
        processes[i].quantum = 5*i; // quantum time for demonstration
    }
}

void runMFQScheduler(Process processes[], int num_processes) {
    for (int time_slice = 0; time_slice < 100; ++time_slice) {
        for (int i = 0; i < num_processes; ++i) {
            if (processes[i].quantum > 0) {
                printf("Time: %d, Process: %d, Priority: %d, quantum: %d\n",
                       time_slice, processes[i].process_id, processes[i].priority, processes[i].quantum);

                processes[i].quantum--;

                // Adjust priority and move to a lower priority queue if needed
                if (time_slice % 10 == 0 && processes[i].priority < 2) {
                    processes[i].priority++;
                }
                break; // Move to the next time slice
            }
        }
    }
}

int main() {
    Process processes[MAX_PROCESSES];
    int num_processes = 5; // Adjust the number of processes as needed

    initializeProcesses(processes, num_processes);
    runMFQScheduler(processes, num_processes);

    return 0;
}
