#include "hashset.h"
#include "symbol.h"
#include "utils.h"
HashSet *symbolTable = NULL;
HashSet *initializeHashSet(int size)
{
    HashSet *hashSet = (HashSet *)malloc(sizeof(HashSet));
    if (hashSet == NULL)
    {
        return NULL;
    }
    hashSet->size = size;
    hashSet->buckets = (Bucket *)malloc(sizeof(Bucket) * size);
    for (int i = 0; i < size; i++)
    {
        hashSet->buckets[i].head = NULL;
    }

    return hashSet;
}

unsigned int pjwHash(char *str)
{
    str = (unsigned char *)str;
    unsigned int val = 0;
    unsigned int i;
    for (; *str; ++str)
    {
        val = (val << 2) + *str;
        if (i = val & ~0x3fff)
            val = (val ^ (i >> 12)) & 0x3fff;
    }

    return val;
}

bool isContain(HashSet *hashSet, char *name)
{
    if (hashSet == NULL)
    {
        printf("\033[31mthe hash set is NULL\n\033[0m");
        return false;
    }
    if (name == NULL)
    {
        printf("\033[31mthe name is NULL\n\033[0m");
        return false;
    }

    unsigned int val = pjwHash(name) % HASH_SIZE;
    Symbol *head = hashSet->buckets[val].head;
    while (head != NULL)
    {
        if (strcmp(name, head->name) == 0)
        {
            return true;
        }
        head = head->next;
    }

    return false;
}

Symbol *get(HashSet *hashSet, char *name)
{
    if (name == NULL)
    {
        printf("\033[31mthe name is NULL\n\033[0m");
        return NULL;
    }
    if (hashSet == NULL)
    {
        printf("\033[31mthe hash set is NULL\n\033[0m");
        return NULL;
    }

    unsigned int val = pjwHash(name) % HASH_SIZE;
    Symbol *head = hashSet->buckets[val].head;
    while (head != NULL)
    {
        if (strcmp(name, head->name) == 0)
        {
            return head;
        }
        head = head->next;
    }
    return NULL;
}

bool insert(HashSet *hashSet, Symbol *symbol)
{
    if (symbol->name == NULL)
    {
        printf("\033[31mthe name is NULL\n\033[0m");
        return false;
    }
    if (isContain(hashSet, symbol->name))
    {
        return false;
    }
    else
    {
        //printf("inserting %s\n", symbol->name);
        unsigned int val = pjwHash(symbol->name) % HASH_SIZE;
        symbol->next = hashSet->buckets[val].head;
        hashSet->buckets[val].head = symbol;
        setSymbolVariable(symbol, getVariable());
        return true;
    }
}

// rename the binding variable
bool overwriteVariable(HashSet *hashSet, char* name, char* variable) {
    Symbol* symbol = get(hashSet, name);
    if(symbol == NULL) {
        return false;
    }
    overWriteSymbolVariable(symbol, variable);
    return true;
}

void outputHashSet(HashSet *hashSet)
{
    for (int i = 0; i < hashSet->size; i++)
    {
        Symbol *p = hashSet->buckets[i].head;
        while (p != NULL)
        {
            outputSymbol(p);
            p = p->next;
        }
    }
}

bool addReadAndWrite(HashSet *hashSet) {
    Symbol* read = createSymbol();
    setSymbolName(read, "read");
    setSymbolType(read, FUNC_SYMBOL);
    setFuncReturnValue(read, _INT_TYPE_, NULL);
    Symbol* arg = createSymbol();
    setSymbolName(arg, "$$");
    setSymbolType(arg, INT_SYMBOL);
    insert(hashSet, arg);
    Symbol* write = createSymbol();
    setSymbolName(write, "write");
    setSymbolType(write, FUNC_SYMBOL);
    setFuncReturnValue(write, _INT_TYPE_, NULL);
    addFuncArgument(write, "$$");
    return insert(hashSet, read) && insert(hashSet, write); 
}
