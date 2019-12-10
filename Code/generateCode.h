#ifndef __GENERATE_CODE_H__
#define __GENERATE_CODE_H__
#include <string.h>
#include "utils.h"
#include "addrDescriptor.h"

typedef struct Notation {
    char* content;
    struct Notation* next;
} Notation;

char* generateCode(Function* functions);
char* handleFunction(Function* function);
char* handleLine(Line* line); 
Notation* parserLine(char* content);
Notation* createNotation(char* content);

#endif
