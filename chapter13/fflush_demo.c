/* fflush_demo.c -- ���Ա�׼I/O ���������ͣ��л������ȫ���壩*/
#include<stdio.h>
#define SIZE 1024
int mddain(void) 
{
    char buf[SIZE];
    setvbuf(stdout, buf,_IOFBF, SIZE);
    printf("while before\n");
    while (1);
    printf("while after");
    return 0;
}