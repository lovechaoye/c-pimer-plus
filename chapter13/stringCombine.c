/* stringCombine.c -- 数组中字符串的每个字符，两两配对，有多少个*/
//只用暴力枚举法
//比较“abc” 结果是ab,ac,bc

//基础算法
//穷举法、动态规划法、回溯法、分治法、递归法和贪心法
#include<stdio.h>
#include<stdlib.h>
int maidddddn(int argc,char * argv[]) {
    if (argc < 2) {
        fprintf(stdout,"Usage: enter a string\n");
        exit(EXIT_FAILURE);
    }
    char* p = argv[1];
    char* temp; 
    char* temp2; 
    int ch;
    int next;
    int second;
    while ((ch=*p) != '\0')
    {
        temp = p +1;
        while ((next = *temp) != '\0')
        {
            temp2 = temp + 1;
            while ((second = *temp2) != '\0')
            {
                putchar(ch);
                putchar(next);
                putchar(second);
                putchar('\n');
                temp2++;
            }
            temp++;
        }
        p++;
    }
    return 0;
}
