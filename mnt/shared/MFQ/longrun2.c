#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <sys/types.h>
#include <unistd.h>
#include <time.h>

#define LOOP_COUNT_MIN 100
#define LOOP_COUNT_MAX 100000000

long long subtime(struct timeval start, struct timeval end) {
  return 1e6 * (end.tv_sec - start.tv_sec) + (end.tv_usec - start.tv_usec);
}

int main(int argc, char *argv[]) {
  char *idStr;
  double number;
  int loopCount;
  int maxloops;
  int v = 0; // Declare v before using it
  int iteration = 1; // Declare iteration before using it

  if (argc < 4 || argc > 5) {
    printf("Usage: %s <id> <loop count> <number> [max loops]\n", argv[0]);
    exit(-1);
  }

  v = getpid();
  idStr = argv[1];

  loopCount = atoi(argv[2]);
  if ((loopCount < LOOP_COUNT_MIN) || (loopCount > LOOP_COUNT_MAX)) {
    printf("%s: loop count must be between %d and %d (passed %s)\n", argv[0], LOOP_COUNT_MIN, LOOP_COUNT_MAX, argv[2]);
    exit(-1);
  }

  number = atof(argv[3]);

  if (argc == 5) {
    maxloops = atoi(argv[4]);
  } else {
    maxloops = 0;
  }

  struct timeval start, end, wait, curr; // store start, end (turnaround time) and temporary times for calculations
  double waiting_time = 0;
  double square_root = 0;

  gettimeofday(&start, NULL);

  while (1) {
    // Iteration logic
    for (int i = 0; i < loopCount; i++) {
      v = (v << 4) - v; // Perform some CPU-bound operation
      // ...
      square_root = sqrt(number); // Calculate square root
    }

    if (iteration == maxloops) {
      break;
    }

    gettimeofday(&wait, NULL);
    fflush(stdout);
    gettimeofday(&curr, NULL);

    waiting_time += subtime(wait, curr); // add to waiting time

    iteration += 1;
  }

  gettimeofday(&end, NULL);

  printf("CPU Bound: Square root of %f is %f\n", number, square_root);
  printf("Turnaround time: %0.6lf seconds\n", subtime(start, end) / 1e6);
  printf("Waiting time: %0.6lf seconds\n", waiting_time / 1e6);

  return 0;
}
