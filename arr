
#include<stdio.h>
#include<string.h>


void Init(int a[], int size)
{
	for (int i = 0; i < size; i++){
		a[i] = i;
	}
}
	void Empty(int a[], int size){
		for (int i = 0; i < size; i++){
			a[i] = 0;
		}
	}
 void Reverse(int a[], int size){
	int left = 0;
	int right = size - 1;
	while (left < right){
		int temp = a[left];
		a[left] = a[right];
		a[right] = temp;
		left++;
		right--;
	}
}
	

void Print(int a[], int size){
	for (int i = 0; i < size; i++){
		printf("%d", a[i]);
	}
	printf("\n");
}
int main()
{
	int a[5];
	int size = sizeof(a) / sizeof(a[0]);
	Init(a, size);
	Print(a, size);
	Reverse(a, size);
	Print(a, size);
	Empty(a, size);
        return 0;
}
