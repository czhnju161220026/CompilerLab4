#include "addrDescriptor.h"


// 初始化一个空地址描述符
// 需要增加遍历符号表，分配内存地址，插入符号的部分
AddrDescriptor* initAddrDescriptor(int size, HashSet* symbolTable)
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

//一个表项的构造函数
ADItem* createAdItem(char* variable)
{
    ADItem* item = (ADItem*)malloc(sizeof(ADItem));
    item->variable = (char*)malloc(strlen(variable));
    strcpy(item->variable, variable);
    item->next = NULL;
    item->place = NULL;
    return item;
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