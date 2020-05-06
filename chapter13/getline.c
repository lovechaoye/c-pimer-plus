/* getline.c -- ��ȡ�ı�ÿ�����ݵĺ��� ��C�� \r\n ��ӳ��� \n*/
#include<stdlib.h>
#include<stdio.h>
#include<string.h>
#define __IN__
#define __OUT__
#define __INOUT__
#define SIZE 10

char* getline(__OUT__ char** _Buffer, __OUT__ int* _Count, __INOUT__ FILE* _Stream);
char* readline();

int maidddddddn(int argc, char* argv[]) {
				/*FILE* fp;
				if (argc < 2)
				{
								puts("Usage: input a filename");
								exit(EXIT_FAILURE);
				}
				if ((fp = fopen(argv[1],"r")) == NULL)
				{
								perror("open file failed!");
								exit(EXIT_FAILURE);
				}*/
				char* buff = NULL;
				int count = 0;
				char* p = NULL;
				while ((p = readline()) != NULL) {
								puts(p);
				}
				//while (getline(&buff,&count,stdin))
				//{
				//				puts(buff);
				//				printf("%d\n",count);
				//}
				return 0;
}

char* getline(__OUT__ char ** _Buffer, __OUT__ int * _Count, __INOUT__ FILE * _Stream) {
				size_t size = SIZE;
				char* buff = (char *)malloc(size);
				size_t length = 0;
				while (1)
				{
								if (!fgets(buff+ length, size - length, _Stream)) { //fgets()һ��Ҫ��ȷָ����С��Ҫ��Ȼ�����������
												break;
								}
								length += strlen(buff + length);  //�������������һ�ε�ͳ�ƣ���Լʱ�䣬strlen()��O(n)��ʱ�临�Ӷ�
								//length = strlen(buff);
								if (buff[length - 1] == '\n' ) {  //��ȡ���˻���,����ȡ��û�г�����������С
												buff[length - 1] = '\0';
												*_Count = length - 1;
												*_Buffer = buff;
												break;
								}
								//��ȡ���бȻ�������Ķ࣬����û�ж������У������󻺳���
								//printf("���󻺳���\n");
								size = size << 1;
								buff = (char *)realloc(buff, size);
								if (!buff)
								{
												break;
								}
				}
}

char* readline() {
				size_t alloc_length = 1024;
				size_t data_length = 0;
				char* data = malloc(alloc_length);

				while (1) {
								char* cursor = data + data_length;
								char* line = fgets(cursor, alloc_length - data_length, stdin);

								if (!line) { break; }

								data_length += strlen(cursor);

								if (data_length < alloc_length - 1 || data[data_length - 1] == '\n') { break; }

								size_t new_length = alloc_length << 1;
								data = realloc(data, new_length);

								if (!data) { break; }

								alloc_length = new_length;
				}

				if (data[data_length - 1] == '\n') {
								data[data_length - 1] = '\0';
				}


				return data;
}
