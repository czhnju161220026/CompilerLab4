#include "regDescriptor.h"

//目前的getReg简单地通过reg返回“reg(name)”
char *getReg(char *name, char **reg)
{
    char *targetReg = "";
    targetReg = concat(3, "reg(", name, ")");
    *reg = (char *)malloc(strlen(targetReg));
    strcpy(*reg, targetReg);
    return "";
}