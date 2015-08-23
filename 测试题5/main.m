/**
5、 输入两个数，打印（printf）这两个数的和、差、积、商、以及余数。（C语言编程题）
 */
#include "stdio.h"
int main()
{   //定义两个变量用来存储输入的数
    int a=0,b=0;
    //读取键盘输入的两个数
    printf("请输入第一个数a：");
    scanf("%d",&a);
    printf("请输入第二个数b：");
    scanf("%d",&b);
    //计算并输出要求的值
    printf("它们的和为：%d\n",a+b);
    printf("它们的差为：%d\n",a-b);
    printf("它们的积为：%d\n",a*b);
    printf("它们的商为：%d\n",a/b);
    printf("它们的余数为：%d\n",a%b);
   }

