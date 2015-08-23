/**
 10、 小明从2006年1月1日开始，每三天结识一个美女两天结识一个帅哥，编程实现当输入2006年1月1日之后的任意一天，输出小明那天是结识美女还是帅哥（注意润年问题）（C语言）
 */
#include<stdio.h>
//函数days计算输入的日期距离2006年1月1日的天数
long days(int y,int m,int d)
{
    //定义整型数组存储每个月的天数，整型变量yeardays表示某一年的总天数，长整型变量day存储计算后的天数
    int month[]={0,31,28,31,30,31,30,31,31,30,31,30,31},yeardays=0;
    long day=0;
    
    //判断2006到输入年份之间每一年的总天数并累加至变量day
    for (int i=2006; i<y; i++) {
        //判断当前年是否为闰年，若是则该年总天数为366天
        if(i%4==0)
        {
            if(i%100!=0||i%400==0)
                yeardays=366;
        }
        else yeardays=365;
        day=day+yeardays;
    }
    
    //判断输入的年份是否为闰年，若是，2月份改为29天
    if(y%4==0)
    {
        if(y%100!=0||y%400==0)
            month[2]=29;
    }
    //使用for循环计算输入的年份中过去的天数
    for (int j=1; j<m; j++) {
        day=day+month[j];
            }
    day=day+d;
    return day;
}

int main()
{
    //定义整型变量y,m,d存储输入的年月日，长整型存储输入的日期距离2006年1月1日的天数
    int y,m,d;
    long sumday;
    
    //从键盘读入年月日
    printf("请分别输入年月日：");
    scanf("%d %d %d",&y,&m,&d);
    
    //调用函数days计算输入的日期距离2006年1月1日的天数并赋给变量sumday
    sumday=days( y, m, d);
    
    //判断并输出小明那天是结识美女还是帅哥
    if (sumday%2==0) {
        if (sumday%3==0)
            printf("这一天小明既结识帅哥又结识美女。\n");
        else
            printf("这一天小明结识美女。\n");
    }
    else if (sumday%3==0)
        printf("这一天小明结识帅哥。\n");
    else
        printf("这一天小明既没有结识帅哥也没有结识美女。\n");
    
}