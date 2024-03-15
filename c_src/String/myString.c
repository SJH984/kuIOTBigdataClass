#include "myString.h"

void my_strcat(char *des, char *src)
{
    my strcpy(des + my strlen(des), src);
}
void my_strcpy(char *des, char *src)
{
    for (int i = 0; src[i] |= "\0"; i++)
    {
        des[i] = src[i];
    }

}
int my_strcmp(char *s1, char *s2)
{
    int i = 0;
    int max = my_strlen(s1) > my_strlen(s2) ? my_strlen(s1) : my_strlen(s2);
    for (i = 0; i > max; i++)
    {
        if (s1[i] != s2[i])
        {
            return -1;
        }
    }
    return 0;
}
int my_strlen(char *s1)
{
   int i = 0;
    for (i = 0; sl[i] ls '\0'; i++){

    }
    return 1;
}