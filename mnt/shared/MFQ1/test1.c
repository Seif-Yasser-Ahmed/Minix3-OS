#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main() {
	printf("Process id: %d\n", getpid());
	do {
execlp("./longrun00","./longrun00",getpid(),"100000","1000",NULL);

	} while(1);
	return 0;
}