#include "addrDescriptor.h"
#include <stdio.h>

// 初始化一个空地址描述符
AddrDescriptor* initAddrDescriptor(int size)
{
    AddrDescriptor* ad = (AddrDescriptor *)malloc(sizeof(AddrDescriptor));
    if (ad == NULL)
    {
        return NULL;
    }
    ad->size = size;
    ad->buckets = (ADBucket *)malloc(sizeof(ADBucket) * size);
    for (int i = 0; i < size; i++)
    {
        ad->buckets[i].head = NULL;
    }

    return ad;
}

// 释放一个地址描述符所占的空间
void freeAddrDescriptor(AddrDescriptor* ad) {
    if(ad == NULL)
    {
        return;
    }
    ADBucket* buckets = ad->buckets;
    for(int i = 0; i < ad->size; i++)
    {
        buckets[i].head = NULL;
    }
    free(ad->buckets);
    free(ad);
}

//一个表项的构造函数
ADItem* createAdItem(char* variable)
{
    ADItem* item = (ADItem*)malloc(sizeof(ADItem));
    item->variable = (char*)malloc(strlen(variable)+1);
    strcpy(item->variable, variable);
    item->next = NULL;
    item->place = NULL;
    item->offset = 0;
    return item;
}

//设置表项相对栈的偏移量
void setOffset(ADItem* item, int offset)
{
    item->offset = offset; 
}

// contains
bool aDContains(AddrDescriptor *ad, char *variable)
{
    if (ad == NULL)
    {
        printf("\033[31mthe ad is NULL\n\033[0m");
        return false;
    }
    if (variable == NULL)
    {
        printf("\033[31mthe variable is NULL\n\033[0m");
        return false;
    }

    unsigned int val = pjwHash(variable) % HASH_SIZE;
    ADItem *head = ad->buckets[val].head;
    while (head != NULL)
    {
        if (strcmp(variable, head->variable) == 0)
        {
            return true;
        }
        head = head->next;
    }

    return false;
}

//insert
bool aDInsert(AddrDescriptor *ad, ADItem *item)
{
    if (item->variable == NULL)
    {
        printf("\033[31mthe variable is NULL\n\033[0m");
        return false;
    }
    if (aDContains(ad, item->variable))
    {
        return false;
    }
    else
    {
        unsigned int val = pjwHash(item->variable) % HASH_SIZE;
        item->next = ad->buckets[val].head;
        ad->buckets[val].head = item;
        return true;
    }
}

// get
ADItem *getADItem(AddrDescriptor* ad, char *variable)
{
    if (variable == NULL)
    {
        printf("\033[31mthe variable is NULL\n\033[0m");
        return NULL;
    }
    if (ad == NULL)
    {
        printf("\033[31mthe ad is NULL\n\033[0m");
        return NULL;
    }

    unsigned int val = pjwHash(variable) % HASH_SIZE;
    ADItem *head = ad->buckets[val].head;
    while (head != NULL)
    {
        if (strcmp(variable, head->variable) == 0)
        {
            return head;
        }
        head = head->next;
    }
    return NULL;
}

void printADItem(ADItem* adItem) {
    if (adItem == NULL) {
        return;
    }

    printf("Name: %s\n", adItem->variable);
    printf("Offset: %d\n", adItem->offset);
    Place* p = adItem->place;
    while (p != NULL) {
        if (p->addrType == REG) {
            printf("REG: $%d\n", p->regName);
        } else {
            printf("Memory: %d\n", p->memory);
        }
        p = p->next;
    }
    
}

void printAddrDescriptor(AddrDescriptor* ad) {
    for (int i = 0; i < ad->size; i++) {
        ADItem* item = ad->buckets[i].head;
        while (item != NULL) {
            printf("----------------------------------------------------\n");
            printADItem(item);
            item = item->next;
        }
    }
}

