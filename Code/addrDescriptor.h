#ifndef __ADDRDESCRIPTOR_H__
#define __ADDRDESCRIPTOR_H__

#include "hashset.h"
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>

typedef enum AddrType
{
    REG,
    MEM
} AddrType;

typedef struct Place
{
    AddrType addrType;
    union {
        int regName;
        int memory;
    };
    struct Place* next;
} Place;

typedef struct ADItem
{
    char *variable;
    Place *place;
    struct ADItem* next;
} ADItem;

typedef struct ADBucket
{
    ADItem *head;
} ADBucket;

typedef struct AddrDescriptor
{
    int size;
    ADBucket* buckets;
} AddrDescriptor;

//构造函数
AddrDescriptor* initAddrDescriptor(int size, HashSet* symbolTable);
ADItem* createAdItem(char* variable);
//功能函数
bool aDContains(AddrDescriptor* ad, char* variable);
bool aDInsert(AddrDescriptor* ad, ADItem* item);
ADItem* getADItem(AddrDescriptor* ad, char* variable);
void printAddrDescriptor(AddrDescriptor* ad);
void printADItem(ADItem* adItem);


#endif
