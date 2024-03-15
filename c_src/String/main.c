#include <stdio.h>
#include <string.h>
int main() 
{
    char str[100];
    printf("Hello, World!");
    strcat(str, "abc");
    printf("%s\n", str);
    strcat(str, "def");
    printf("%s\n", str);
    printf("%s\n", strcat(str, "ghi"));

    return 0;
}
