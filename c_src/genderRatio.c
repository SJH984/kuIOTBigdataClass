#include<stdio.h>

int main(void)

{
	int man, woman;
	scanf("%d" "%d", &man, &woman);
	
	double manRatio = (double)man / (man + woman) * 100 ;
	double womanRatio =(double)woman / (man + woman) * 100 ;
	
	printf("#man : %d\tman Ratio: %.2f%%\n", man, manRatio);
	printf("#woman : %d\twoman Ratio: %.2f%%\n", woman, womanRatio);
	return 0;
	
}	
