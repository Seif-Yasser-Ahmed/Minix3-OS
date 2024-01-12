#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>
#include <stdio.h>

int main() {
  


  int pid[20];
  int i;
  char processid[100];

  // Spawn 10 child processes
  for (i = 1; i <= 5; i++) {
    pid[i] = fork();
    if (pid[i] == 0) {
      // Child process: execute longrun2 with specific arguments
      sprintf(processid, "%2d", i);
      execlp("./longrun2", "./longrun2", processid, "100000", "1000", "2.0", NULL);
    }
  }

  // Wait for all child processes to finish
  for (i = 1; i <= 10; i++) {
    wait(NULL);
  }
int number;
printf("enter a number");
scanf("%d",&number);
printf("the number is: %d\n",number);
  return 0;
}
