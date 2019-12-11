#ifndef __UTILS_H_
#define __UTILS_H_
#include "symbol.h"
char* concat(int n, ...);
char* getTemp();
char* getVariable();
char* getLabel();

typedef struct Notation {
    char* content;
    struct Notation* next;
} Notation;

typedef struct Line {
    char* content;
    Notation* notations;
    struct Line* next;
} Line;

typedef struct Function {
    Line* lines;
    int spaceRequired;
    struct Function* next;
} Function;

Function* splitIntoFunctions(char* code);
void outputFunction(Function* f);
Notation* parserLine(char* content);
Notation* createNotation(char* content);

#endif
