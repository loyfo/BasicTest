/**
 7、 编程实现对键盘输入的英文名句子进行加密。用加密方法为：当内容为英文字母时，用26字母中的其后三个字母代替该字母，若为其它字符时不变。比如245a95n加密后是245bcd95opq。（C语言）
  */
#include<stdio.h>
#include<string.h>

void jiami(char ch){
    //如果是数字就直接输出
    if(ch<='9'&&ch>='0')
        //使用putchar函数输出到屏幕
        putchar(ch);
    //如果为x,y,z这三个字母则分别输出“yza”,"zab","abc"
    else if(ch=='x'){
        printf("yza");
    }
    else if(ch=='y'){
        printf("zab");
    }
    else if(ch=='z'){
        printf("abc");
    }
    //其余字母输出其后的3个字母
    else{
        putchar(ch+1);
        putchar(ch+2);
        putchar(ch+3);
    }
}

int main()
{   //定义数组存储字符串；定义变量i和len用于遍历数组及存储数组长度
    char str[10000];
    int i,len;
    //从键盘读取字符串
    gets(str);
    //使用strlen函数获得输入的字符串长度，并赋给len
    len=strlen(str);
    //for循环遍历字符串
    for(i=0;i<len;i++)
    //使用jiami函数处理字符串中的字符
        jiami(str[i]);
    return 0;
}
