/* fflush_demo.c -- 测试标准I/O 缓冲区类型（行缓冲和完全缓冲）*/
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