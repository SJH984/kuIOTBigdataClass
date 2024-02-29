#include<stdio.h>
int main(void)
{
 	int a, b, c;
 	scanf("%d" "%d" "%d", &a, &b, &c);
	
	if (a > b) {
		//a, b
		if (c > a) {
		// c, a, b
		} else if (c > b) {
		// a, c, b
		} else {
		// a, b, c 		
		} 
		
		} else {
		// b, a
		if (c > b) {
		// c, b, a
		} else if (c > a) {
		// b, c, a
		} else {
		// a, a, c
		}
		}
	return 0;	
	}
