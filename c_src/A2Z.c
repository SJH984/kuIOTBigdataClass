#include <stdio.h>
int main(void) 
{
	char capital;
	printf("Captial Input : ");
	scanf("%c", &capital);
	
	int result = (65 <= capital && capital <= 90);
	
	printf("[A, Z] : %d\n", result);
	
	return  0;
	}
