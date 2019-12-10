#ifndef __GENERATE_CODE_H__
#define __GENERATE_CODE_H__
#include <string.h>
#include "utils.h"
#include "addrDescriptor.h"

char* generateCode(Function* functions);
char* handleFunction(Function* function);
char* handleLine(Line* line);

#endif