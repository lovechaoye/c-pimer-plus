/* reduceto.c -- ���ļ�ѹ����ԭ����1/3�� */
#pragma warning(disable:4996)
#include<stdio.h>
#include<stdlib.h>  //�ṩexit()��ԭ��
#include<string.h>  //�ṩ strcpy()��strcat()��ԭ��
#define LEN 40

int mai22n(int argc, char* argv[]) {
    FILE* in, * out;  //����ָ��FILE��ָ��
    int ch; //��int���͵ı����洢EOF
    char name[LEN]; //����������ļ���
    int count = 0;

    //��������в���
    if (argc < 2)
    {
        fprintf(stderr,"Usage: %s filename\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    //��������
    if ((in = fopen(argv[1],"r")) == NULL)
    {
        perror("I couldn't open the file");
        exit(EXIT_FAILURE);
    }

    //��������
    strncpy(name,argv[1],LEN - 5); //�����ļ���
    name[LEN - 5] = '\0';
    strcat(name,".red");  //���ļ��������.red
    if ((out = fopen(name,"w")) == NULL)
    {
        perror("Can't create output file");
        exit(EXIT_FAILURE);
    }
    //��������
    while ((ch = fgetc(in)) != EOF)
    {
        if (count++ % 3 == 0)
        {
            putc(ch,out);
        }
    }
    if (fclose(in) != 0 || fclose(out) != 0)
    {
        perror("Error in closing files");
    }

    return 0;
}
