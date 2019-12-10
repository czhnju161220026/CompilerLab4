#ifndef __UTILS_H_
#define __UTILS_H_
#include "symbol.h"
char* concat(int n, ...);
char* getTemp();
char* getVariable();
char* getLabel();

typedef struct Line {
    char* content;
    struct Line* next;
} Line;

typedef struct Function {
    Line* lines;
    struct Function* next;
} Function;

Function* splitIntoFunctions(char* code);
void outputFunction(Function* f);

#endif
