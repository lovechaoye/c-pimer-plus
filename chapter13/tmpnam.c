/* tmpname.c -- 学习tmpnam()函数*/
/*
    函数原型
    Defined in header <stdio.h>
    char *tmpnam( char *filename );(1)
    errno_t tmpnam_s(char *filename_s, rsize_t maxsize); (2)	(since C11)

*/
#pragma warning(disable:4996)
#include<stdio.h>
int aamaddddin() {
    char buf[L_tmpnam];
    char* p;
    p = tmpnam(buf);
    printf("tmp == p ? %s,p address = %p,tmpnam returnValue address = %p\n",p == buf ?"true":"false",p,buf);
    puts(buf);
    p = tmpnam(NULL);
    printf("when parameter is NULL,the returnValue address = %p\n",p);
    puts(buf);
    static int a = 9;
    printf("static int a address = %p\n",&a);
    return 0;
}