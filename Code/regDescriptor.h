#ifndef __REGDESCRIPTOR_H__
#define __REGDESCRIPTOR_H__
#include <string.h>
#include "utils.h"
#include "addrDescriptor.h"
/*TODO: 数据结构设计*/

typedef struct Register {
    int index;
    Notation* head;
} Register;

typedef struct RegDescriptor {
    int index;
    Register registers[8];
} RegDescriptor;

extern RegDescriptor* globalRegDescriptor;
char* getReg(char* name, char** reg, AddrDescriptor* localAD);
RegDescriptor* createRegDescriptor();
bool isRegFree(Register* reg);
bool isInReg(Register* reg, char* name);
char* writeBackReg(Register* reg, AddrDescriptor* localAD);
void cleanRegister(Register* reg);
char* variableWriteBackToMemory(char* name, AddrDescriptor* localAD);
#endif
