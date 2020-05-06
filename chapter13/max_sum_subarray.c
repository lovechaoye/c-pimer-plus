/* max_sum_subarray.c -- һ���ǿ����飬ÿ��Ԫ�������и������һ�������飬���ĺ����*/
#include<stdio.h>
#include<stdlib.h>
int sum(int array[], int left, int right);//������������
int getMaxSum(int array[], int left, int right);
int getMaxSum2(int array[], int left, int right);
int max_sub1(int array[], int length);
int max_sub2(int array[], int length);
int msssain(void) {
    //int array[] = {-1,-3,3,5,-4,3,2,-2,3,6};
    int array[] = { -84,-87,-78,-16,-94,-36,-87,-93,-50,-22,-63,-28,-91,-60,-64,-27,-41,-27,-73,-37,-12,-69,-68,-30,-83,-31,-63,-24,-68,-36,-30,-3,-23,-59,-70,-68,-94,-57,-12,-43,-30,-74,-22,-20,-85,-38,-99,-25,-16,-71,-14,-27,-92,-81,-57,-74,-63,-71,-97,-82,-6,-26,-85,-28,-37,-6,-47,-30,-14,-58,-25,-96,-83,-46,-15,-68,-35,-65,-44,-51,-88,-9,-77,-79,-89,-85,-4,-52,-55,-100,-33,-61,-77,-69,-40,-13,-27,-87,-95,-40 };
				//int max = getMaxSum(array,0,sizeof(array)/sizeof(int)-1);
				int max = max_sub2(array,sizeof(array)/sizeof(int)-1);
				printf("max = %d\n",max);
				return 0;
}

int getMaxSum(int array[],int left,int right) {
				if (left == right)
				{
								return array[left];
				}
				int maxValue ;
				int more;
				maxValue = sum(array, left, right);
				int sumLeft = getMaxSum(array, left,right -1);
				int sumRight = getMaxSum(array, left+1,right);
				more = sumLeft > sumRight ? sumLeft : sumRight;
				return maxValue > more ? maxValue : more;
}

int sum(int array[],int left,int right) {
				int i;
				int sum = 0;
				for (i = left; i <=right ; i++)
				{
								sum += array[i];
				}
				return sum;
}

//һ���Է�һ�룬�ֵ��׵��ٶȸ��죬�ݹ����Ĳ�θ��ͣ��������ڵݹ�Ľ���
int getMaxSum2(int array[], int left, int right) {
				if (left == right)
				{
								return array[left];
				}
				//�ֽ�Ԫ����,�ݹ�������
				int mid = left + (right - left) / 2;
				int sumLeft = getMaxSum2(array, left, mid);
				int sumRight = getMaxSum2(array, mid + 1, right);
				//�м����
				int summid ;
				int more;
				int i = mid-1;
				int j = mid+1;
				int leftMax = 0;
				int rightMax = 0;
				if (mid -1>=left) {
								leftMax = array[i];
				}
				if (mid + 1 <= right) {
								rightMax = array[j];
				}

				while (i>=left)
				{
								int temp = sum(array,i,mid -1);
								leftMax = leftMax > temp ? leftMax : temp;
								i--;
				}

				while (j <= right)
				{
								int temp = sum(array, mid + 1, j);
								rightMax = rightMax > temp ? rightMax : temp;
								j++;
				}
				summid = leftMax + rightMax + array[mid];
				more = sumLeft > sumRight ? sumLeft : sumRight;
				return summid > more ? summid : more;
}

//����ö�٣�������ö�ٵö��������÷��࣬Ȼ�󣬲ſ���д���������ѭ��
int max_sub1(int array[],int length) {
				//˼·���һ�������������飬������ֵ�Ƕ���
				//�����������ֿ�ʼ�ķ��෽����һ�ǣ��ȼ��㳤����һ�ģ��ڼ��㳤����2�ģ��Դ�����
				int max = array[0];   //max��ȡֵ�������ѡһ����������0����ֹ����Ԫ�ض��Ḻ��
				int sum;
				int i;  //i�������ʾ����
				int j;
				int k;
				for (i = 1; i <= length; i++)
				{
								for ( j = 0; j < length; j++)  //j������������
								{
												sum = 0;
												for (k = j; k < j+i && k < length; k++)  //�����Ǽ���������ĺ�
												{
																sum += array[k];
												}
												if (sum > max)
												{
																max = sum;
												}

								}
				}

				return max;
}

//����ö�ٷ�����������Էֳ����֣�ÿһ���ڵ㵱��ʼ�Ľڵ㣬Ȼ�����������ߣ������ӵ���ͼ���Ƚϼ�
int max_sub2(int array[], int length) {
				int max = array[0];   //max��ȡֵ�������ѡһ����������0����ֹ����Ԫ�ض��Ḻ��
				int sum;
				int i;  //i�������ʾ����
				int j;
				for (i = 0; i < length; i++)
				{
								sum = 0;
								//��array[i] Ϊ��㣬��������������������
								for (j = i; j < length; j++)
								{
												sum += array[j];
												if (sum > max)
												{
																max = sum;
												}
								}
				}
				return max;
}