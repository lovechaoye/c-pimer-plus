/* stringCombine.c -- �������ַ�����ÿ���ַ���������ԣ��ж��ٸ�*/
//ֻ�ñ���ö�ٷ�
//�Ƚϡ�abc�� �����ab,ac,bc

//�����㷨
//��ٷ�����̬�滮�������ݷ������η����ݹ鷨��̰�ķ�
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
