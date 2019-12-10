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

Notation* parserLine(char* content) {
    Notation* head = NULL;
    Notation* p = NULL;
    char* temp = strtok(content, " ");
    while (temp != NULL) {
        Notation* t = createNotation(temp);
        if (head == NULL && p == NULL) {
            head = t;
            p = t;
        } else {
            p->next = t;
            p = t;
        }
        temp = strtok(NULL, " ");
    }
    return head;
}

Notation* createNotation(char* content) {
    Notation* notation = (Notation*) malloc(sizeof(Notation));
    notation->next = NULL;
    notation->content = (char*) malloc(strlen(content) + 2);
    strcpy(notation->content, content);
    return notation;
}
