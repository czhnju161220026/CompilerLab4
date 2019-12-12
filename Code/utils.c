#include "utils.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>

int global_temp_num = 0;
int global_variable_num = 0;
int global_label_num = 0;

char *cloneString(char *str)
{
    char *res = (char *)malloc(strlen(str) + 1);
    strcpy(res, str);
    return res;
}

char *concat(int n, ...)
{
    va_list argp;
    va_start(argp, n);
    int length = 0;
    for (int i = 0; i < n; i++)
    {
        char *s = va_arg(argp, char *);
        if (s != NULL)
        {
            length += strlen(s);
        }
    }
    va_end(argp);
    char *str = (char *)malloc(length + n + n);
    memset(str, 0, length + n + n);
    va_start(argp, n);
    for (int i = 0; i < n; i++)
    {
        char *s = va_arg(argp, char *);
        if (s != NULL)
        {
            strcat(str, s);
        }
    }
    return str;
}

char *getTemp()
{
    char str[256];
    sprintf(str, "t%d", global_temp_num++);
    char *temp = (char *)malloc(256);
    strcpy(temp, str);
    return temp;
}

char *getVariable()
{
    char str[256];
    sprintf(str, "v%d", global_variable_num++);
    char *temp = (char *)malloc(256);
    strcpy(temp, str);
    return temp;
}

char *getLabel()
{
    char str[256];
    sprintf(str, "label%d", global_label_num++);
    char *temp = (char *)malloc(256);
    strcpy(temp, str);
    return temp;
}

Function *splitIntoFunctions(char *code)
{
    char delim[] = "\n";
    char *line;
    Function *function = NULL;
    Function *tail = NULL;
    Line *currentFunction = NULL;
    for (line = strtok(code, delim); line != NULL; line = strtok(NULL, delim))
    {
        if (strlen(line) > 8)
        {
            // test wheter it is a function
            char buffer[10];
            memcpy(buffer, line, 8);
            buffer[8] = '\0';
            if (strcmp(buffer, "FUNCTION") == 0)
            {
                if (function == NULL)
                {
                    function = (Function *)malloc(sizeof(Function));
                    tail = function;
                    function->lines = (Line *)malloc(sizeof(Line));
                    function->lines->content = (char *)malloc(strlen(line) + 1);
                    strcpy(function->lines->content, line);
                    currentFunction = function->lines;
                }
                else
                {
                    Function *newFunction = (Function *)malloc(sizeof(Function));
                    tail->next = newFunction;
                    tail = newFunction;
                    newFunction->lines = (Line *)malloc(sizeof(Line));
                    newFunction->lines->content = (char *)malloc(strlen(line) + 1);
                    strcpy(newFunction->lines->content, line);
                    currentFunction = newFunction->lines;
                }
            }
            else
            {
                Line *newLine = (Line *)malloc(sizeof(Line));
                newLine->content = (char *)malloc(strlen(line) + 1);
                strcpy(newLine->content, line);
                currentFunction->next = newLine;
                currentFunction = newLine;
            }
        }
        else
        {
            Line *newLine = (Line *)malloc(sizeof(Line));
            newLine->content = (char *)malloc(strlen(line) + 1);
            strcpy(newLine->content, line);
            currentFunction->next = newLine;
            currentFunction = newLine;
        }
    }
    for (Function *f = function; f != NULL; f = f->next)
    {
        for (Line *l = f->lines; l != NULL; l = l->next)
        {
            l->notations = parserLine(l->content);
        }
    }

    return function;
}

void outputFunction(Function *f)
{
    printf("-----------------------------------\n");
    printf("--------Space Requried: %d--------\n", f->spaceRequired);
    for (Line *line = f->lines; line != NULL; line = line->next)
    {
        for (Notation *notation = line->notations; notation != NULL; notation = notation->next)
        {
            printf("%s ", notation->content);
        }
        printf("\n");
    }
}

void outputLine(Line *line)
{
    for (Notation *notation = line->notations; notation != NULL; notation = notation->next)
    {
        printf("%s ", notation->content);
    }
    printf("\n");
}

Notation *parserLine(char *content)
{
    Notation *head = NULL;
    Notation *p = NULL;
    char *temp = strtok(content, " ");
    while (temp != NULL)
    {
        Notation *t = createNotation(temp);
        if (head == NULL && p == NULL)
        {
            head = t;
            p = t;
        }
        else
        {
            p->next = t;
            p = t;
        }
        temp = strtok(NULL, " ");
    }
    return head;
}

Notation *createNotation(char *content)
{
    Notation *notation = (Notation *)malloc(sizeof(Notation));
    notation->next = NULL;
    notation->content = (char *)malloc(strlen(content) + 2);
    strcpy(notation->content, content);
    return notation;
}
