#include "generateCode.h"

char *generateCode(Function *functions)
{
    char *result = "";
    //TODO: implement
    for (Function *f = functions; f != NULL; f = f->next)
    {
        concat(2, result, handleFunction(f));
    }
    return result;
}

char *handleFunction(Function *function)
{
    char *result = "";
    //TODO: implement
    return result;
}

char *handleLine(Line *line)
{
    char *result = "";
    //TODO: implement
    return result;
}