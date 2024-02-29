#include<stdio.h>

int main(void)

{
     	int kor, eng, math;
     	//scanf("%d", &kor);
     	//scanf("%d", &eng);
     	//scanf("%d", &math);
     	scanf("%d %d %d", &kor, &eng, &math);
     	
     	int sum = kor + eng + math;
     	double average = sum / 3.0;
     	
     	printf("sum : %d\taverage : %.2f\n", sum, average);
		return 0;
	
}
