/**
 8、 输入一个整数score代表分数，根据分数输出等级A-E （C语言编程题）
 A：90~100
 B：80~89
 C：70~79
 D：60~69
 E：0~60
 */
#include "stdio.h"
int main()
{   //定义变量用来存储输入的分数
    int score,a;
    //读取键盘输入的分数
    printf("请输入分数：");
    scanf("%d",&score);
    //通过判断score的值给a赋不同的值
    if (score>=90&&score<=100)
        a=1;
    else if (score>=80&&score<=89)
        a=2;
    else if (score>=70&&score<=79)
        a=3;
    else if (score>=60&&score<=69)
        a=4;
    else if (score>=0&&score<60)
        a=5;
    else
        a=0;
    //使用switch语句通过判断a的值输出相应的等级
    switch (a){
        case 1:printf("等级为:A\n");break;
        case 2:printf("等级为:B\n");break;
        case 3:printf("等级为:C\n");break;
        case 4:printf("等级为:D\n");break;
        case 5:printf("等级为:E\n");break;
        default:printf("输入错误\n");
    }
}

