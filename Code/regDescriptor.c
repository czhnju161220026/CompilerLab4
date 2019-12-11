#include "regDescriptor.h"
#include <string.h>
#include <stdio.h>

RegDescriptor* globalRegDescriptor;
// 目前的getReg简单地通过reg返回“reg(name)”
// 需要处理的情况大致有：
//     1) name是一个变量，需要根据寄存器是否有空闲进行处理，并返回相关的操作
//     2）name是一个立即数
//     3）name是形如&y的地址
char *getReg(char *name, char **reg, AddrDescriptor* localAD)
{
    char* code;
    char str[256];
    char targetReg[10] = {'$', 't', '0', '\0'};

    //如果是立即数，通过$t8传递
    if (name[0] == '#') {
        sprintf(str, "  li $t8, %s\n", name + 1);
        code = (char*) malloc(strlen(str) + 1);
        strcpy(code, str);
        *reg = (char *)malloc(strlen("$t8") + 1);
        strcpy(*reg, "$t8");
        return code;
    }

    //如果这个变量已经在寄存器里，直接返回该寄存器
    for (int i = 0; i < 8; i++) {
        Register* p_reg = &(globalRegDescriptor->registers[i]);
        if (isInReg(p_reg, name)) {
            targetReg[2] = '0' + i;
            *reg = cloneString(targetReg);
            return "";
        }
    }

    //寻找一个空的寄存器，载入变量
    for (int i = 0; i < 8; i++) {
        Register* p_reg = &(globalRegDescriptor->registers[i]);
        if (isRegFree(p_reg)) {
            ADItem* adItem = getADItem(localAD, name);
            sprintf(str, "  lw $t%d, %d($sp)\n", p_reg->index, adItem->offset);
            code = (char*) malloc(strlen(str) + 1);
            strcpy(code, str);
            targetReg[2] = '0' + i;
            *reg = cloneString(targetReg);
            Notation* notation = (Notation*) malloc(sizeof(Notation));
            notation->content = cloneString(name);
            notation->next = NULL;
            p_reg->head = notation;
            return code;
        }
    }

    //踢出一个寄存器里的变量，载入该变量
    Register* p_reg = &(globalRegDescriptor->registers[globalRegDescriptor->index]);
    globalRegDescriptor->index = (globalRegDescriptor->index + 1) % 8;
    //踢出旧值
    char* code1 = cleanReg(p_reg, localAD);
    //载入新值
    ADItem* adItem = getADItem(localAD, name);
    sprintf(str, "  lw $t%d, %d($sp)\n", p_reg->index, adItem->offset);
    char* code2 = cloneString(str);
    targetReg[2] = '0' + p_reg->index;
    *reg = cloneString(targetReg);
    Notation* notation = (Notation*) malloc(sizeof(Notation));
    notation->content = cloneString(name);
    notation->next = NULL;
    p_reg->head = notation;
    return concat(2, code1, code2);

    char* temp = concat(3, "reg(", name, ")");
    *reg = (char *)malloc(strlen(temp) + 1);
    strcpy(*reg, temp);
    return "";
}

char* cleanReg(Register* reg, AddrDescriptor* localAD) {
    char* oldName = reg->head->content;
    ADItem* adItem = getADItem(localAD, oldName);
    if (adItem != NULL) {
        char str[256];
        sprintf(str, "  sw $t%d, %d($sp)\n", reg->index, adItem->offset);
        reg->head = NULL;
        char* code = cloneString(str);
        return code;
    } else {
        reg->head = NULL;
        return "";
    }
}


RegDescriptor* createRegDescriptor() {
    RegDescriptor* regDescriptor = (RegDescriptor*) malloc(sizeof(RegDescriptor));
    for (int i = 0; i < 8; i++) {
        regDescriptor->registers[i].head = NULL;
        regDescriptor->registers[i].index = i;
    }
    regDescriptor->index = 0;
    return regDescriptor;
}

bool isRegFree(Register* reg) {
    if (reg->head == NULL) {
        return true;
    } else {
        return false;
    }
}

char* saveRegister(Register* reg, AddrDescriptor* localAD) {
    Notation* p = reg->head;
    reg->head = NULL;
    ADItem* adItem = getADItem(localAD, p->content);
    char str[256];
    sprintf(str, "  sw $t%d, %d($sp)\n", reg->index, adItem->offset);
    char* code = (char*) malloc(strlen(str) + 1);
    strcpy(code, str);
    return code;
}

bool isInReg(Register* reg, char* name) {
    if (reg->head == NULL) {
        return false;
    }
    return strcmp(reg->head->content, name) == 0;
}
