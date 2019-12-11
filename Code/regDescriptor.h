#ifndef __REGDESCRIPTOR_H__
#define __REGDESCRIPTOR_H__
#include <string.h>
#include "utils.h"
#include "addrDescriptor.h"
/*TODO: 数据结构设计*/




char* getReg(char* name, char** reg, AddrDescriptor* localAD);
#endif