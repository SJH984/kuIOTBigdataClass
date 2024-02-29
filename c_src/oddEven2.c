#include<stdio.h>
int main(void)
{
	int num;
	scanf("%d", &num);
	
	if (num % 2 /* == 1 */) {
	printf("%d is a odd number\n", num); 
 } else {
 	printf("%d is a even number\n", num);
 	}
	return 0;
	
}	
