#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>


int main(int argc, char* argv[]) {
	unsigned long numero, i, cont;
	//numero=atol(argv[1]);
	numero=strtoul(argv[1],NULL,10);
    if (numero<=0) exit(1);
    
	struct timeval start, stop;
	double secs = 0;
	gettimeofday(&start, NULL);
	
	for (i=1;i<=numero;++i) {
		if (numero%i==0) ++cont;
	}
	
	gettimeofday(&stop, NULL);
	secs = (double)(stop.tv_usec - start.tv_usec) / 1000000 + (double)(stop.tv_sec - start.tv_sec);
	printf("%f\n",secs);
}

