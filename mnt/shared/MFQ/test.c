#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
	
	#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define MAX_PROCESSES 10
#define LEVEL_QUANTUM {5, 10, 20}

typedef struct {
    int process_id;
    int priority;
    int arrival_time;
    int burst_time;
    int turnaround_time;
    int waiting_time;
} Process;

void initializeProcesses(Process processes[], int num_processes) {
    for (int i = 0; i < num_processes; ++i) {
        processes[i].process_id = getpid() + i;
        processes[i].priority = i;
        processes[i].arrival_time = rand() % 10;
        processes[i].burst_time = rand() % 40 + 1; // Increase the burst time range
        processes[i].turnaround_time = 0;
        processes[i].waiting_time = rand()%10;
    }
}

void runMFQScheduler(Process processes[], int num_processes, int level_quantum[]) {
    int time_slice = 0;

    while (1) {
        int process_executed = 0;

        for (int i = 0; i < num_processes; ++i) {
            if (processes[i].burst_time > 0 && processes[i].arrival_time <= time_slice) {
                printf("Time: %d, Process: %d, Priority: %d, Burst Time: %d\n",
                       time_slice, processes[i].process_id, processes[i].priority, processes[i].burst_time);

                processes[i].burst_time -= level_quantum[processes[i].priority];
                process_executed = 1;

                // Adjust priority and move to a lower priority queue if needed
                if (processes[i].burst_time > 0) {
                    if (processes[i].priority < sizeof(level_quantum) / sizeof(level_quantum[0]) - 1) {
                        processes[i].priority++;
                    }
                } else {
                    // Process completed
                    processes[i].turnaround_time = time_slice - processes[i].arrival_time;
                }
            }
        }

        if (!process_executed) {
            break; // No more processes to execute
        }

        time_slice++;
    }
}

void printResults(Process processes[], int num_processes) {
    printf("Process\tTurnaround Time\tWaiting Time\n");

    for (int i = 0; i < num_processes; ++i) {
        printf("%d\t%d\t\t%d\n", processes[i].process_id, processes[i].turnaround_time, processes[i].waiting_time);
    }
}

int main() {
    Process processes[MAX_PROCESSES];
    int num_processes = 5;
    int level_quantum[] = {5, 10, 20};

    initializeProcesses(processes, num_processes);
    runMFQScheduler(processes, num_processes, level_quantum);
    printResults(processes, num_processes);
printf("Process id: %d\n", getpid());

    return 0;
}
    
	