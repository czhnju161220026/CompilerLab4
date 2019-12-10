#include "utils.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>

int global_temp_num = 0;
int global_variable_num = 0;
int global_label_num = 0;

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
    char *str = (char *)malloc(length + 1);
    memset(str, length, 0);
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
                    function->lines->content = (char *)malloc(strlen(line));
                    strcpy(function->lines->content, line);
                    currentFunction = function->lines;
                }
                else
                {
                    Function *newFunction = (Function *)malloc(sizeof(Function));
                    tail->next = newFunction;
                    tail = newFunction;
                    newFunction->lines = (Line *)malloc(sizeof(Line));
                    newFunction->lines->content = (char *)malloc(strlen(line));
                    strcpy(newFunction->lines->content, line);
                    currentFunction = newFunction->lines;
                }
            }
            else
            {
                Line *newLine = (Line *)malloc(sizeof(Line));
                newLine->content = (char *)malloc(strlen(line));
                strcpy(newLine->content, line);
                currentFunction->next = newLine;
                currentFunction = newLine;
            }
        }
        else
        {
            Line *newLine = (Line *)malloc(sizeof(Line));
            newLine->content = (char *)malloc(strlen(line));
            strcpy(newLine->content, line);
            currentFunction->next = newLine;
            currentFunction = newLine;
        }
    }
    return function;
}

void outputFunction(Function *f)
{
    printf("-----------------------------------\n");
    for (Line *line = f->lines; line != NULL; line = line->next)
    {
        printf("%s\n", line->content);
    }
}
