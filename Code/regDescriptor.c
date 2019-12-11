#include "regDescriptor.h"

// 目前的getReg简单地通过reg返回“reg(name)”
// 需要处理的情况大致有：
//     1) name是一个变量，需要根据寄存器是否有空闲进行处理，并返回相关的操作
//     2）name是一个立即数
//     3）name是形如&y的地址
char *getReg(char *name, char **reg, AddrDescriptor* localAD)
{
    char *targetReg = "";
    targetReg = concat(3, "reg(", name, ")");
    *reg = (char *)malloc(strlen(targetReg));
    strcpy(*reg, targetReg);
    return "";
}