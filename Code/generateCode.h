#ifndef __GENERATE_CODE_H__
#define __GENERATE_CODE_H__
#include <string.h>
#include "utils.h"
#include "addrDescriptor.h"
#include "regDescriptor.h"

Function* globolFunctions;

char* generateCode(Function* functions);
AddrDescriptor* analyzeFunction(Function* function);
char* handleFunction(Function* function, AddrDescriptor* localAD);
char* handleLine(Line* line, AddrDescriptor* localAD); 
Notation* getNotation(Notation* notation, int index);
int numNotations(Notation* notation);
#endif
