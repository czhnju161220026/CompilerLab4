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
    int offset; //栈顶偏移量
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
AddrDescriptor* initAddrDescriptor(int size);
// void freeAddrDescriptor(AddrDescriptor* ad);
ADItem* createAdItem(char* variable);
void setOffset(ADItem* item, int offset);
//功能函数
bool aDContains(AddrDescriptor* ad, char* variable);
bool aDInsert(AddrDescriptor* ad, ADItem* item);
ADItem* getADItem(AddrDescriptor* ad, char* variable);
void printAddrDescriptor(AddrDescriptor* ad);
void printADItem(ADItem* adItem);


#endif
