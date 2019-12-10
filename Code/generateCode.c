#include "generateCode.h"

char *generateCode(Function *functions)
{
    char *result = "";
    //TODO: implement
    for (Function *f = functions; f != NULL; f = f->next)
    {
        result = concat(2, result, handleFunction(f));
    }
    return result;
}

char *handleFunction(Function *function)
{
    char *result = "";
    //TODO: implement
    for (Line *line = function->lines; line != NULL; line = line->next)
    {
        result = concat(2, result, handleLine(line));
    }
    return result;
}

char *handleLine(Line *line)
{
    char *result = "";
    //TODO: implement
    Notation *notations = parserLine(line->content);
    Notation *_2ndNotation = getNotation(notations, 1);
    if (strcmp(_2ndNotation->content, ":=") == 0)
    {
        // Var1 := Var2
        if (numNotations(notations) == 3)
        {
            Notation *_1stNotation = getNotation(notations, 0);
            Notation *_3rdNotation = getNotation(notations, 2);
            // *x := y
            if (_1stNotation->content[0] == '*')
            {
                char *regx, *regy;
                getReg(_1stNotation->content + 1, &regx);
                getReg(_3rdNotation->content, &regy);
                result = concat(5, "  sw ", regy, ", 0(", regx, ")\n");
            }
            // x := #k
            else if (_3rdNotation->content[0] == '#')
            {
                char *regx;
                getReg(_1stNotation->content, &regx);
                result = concat(5, "  li ", regx, ", ", _3rdNotation->content + 1, "\n");
            }
            // x := *y
            else if (_3rdNotation->content[0] == '*')
            {
                char *regx, *regy;
                getReg(_1stNotation->content, &regx);
                getReg(_3rdNotation->content + 1, &regy);
                result = concat(5, "  lw ", regx, "0(", regy, ")\n");
            }
            // x := &y
            else if (_3rdNotation->content[0] == '&')
            {
                result = "  TODO: x := &y";   
            }
            // x := y
            else {
                char *regx, *regy;
                getReg(_1stNotation->content, &regx);
                getReg(_3rdNotation->content, &regy);
                result = concat(5, "  move ", regx, ", ", regy, "\n");
            }
        }
        //Var1 := Var2 op Var3
        else if (numNotations(notations) == 5)
        {
            result = "  TODO: Var1 := Var2 op Var3\n";  
        }
        // Var1 := call Function
        else if (numNotations(notations) == 4)
        {
            result = "  TODO: ar1 := call Function\n"; 
        }
    }
    else
    {
        Notation *_1stNotation = getNotation(notations, 0);
        if (strcmp(_1stNotation->content, "LABEL") == 0 || strcmp(_1stNotation->content, "FUNCTION") == 0)
        {
            result = (char *)malloc(strlen(_2ndNotation->content));
            strcpy(result, _2ndNotation->content);
            result = concat(2, result, ":\n");
        }
        else if (strcmp(_1stNotation->content, "GOTO") == 0)
        {
            result = (char *)malloc(strlen(_2ndNotation->content));
            strcpy(result, _2ndNotation->content);
            result = concat(3, "  j ", result, "\n");
        }
        else if (strcmp(_1stNotation->content, "RETURN") == 0)
        {
            char *ret = _2ndNotation->content;
            if (ret[0] == '#') //返回立即数
            {
                result = concat(3, "  move $v0, ", ret + 1, "\n  jr $ra\n");
            }
            else
            {
                //TODO
                char *reg = "";
                getReg(ret, &reg);
                result = concat(3, "  move $v0, ", reg, "\n  jr $ra\n");
            }
        }
        else if (strcmp(_1stNotation->content, "IF") == 0)
        {
            result = "  --condition statement--\n";
        }
    }

    return result;
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

Notation *getNotation(Notation *notation, int index)
{
    Notation *p = notation;
    for (int i = 0; i < index; i++)
    {
        if (p != NULL)
        {
            p = p->next;
        }
        else
        {
            return NULL;
        }
    }
    return p;
}

//目前的getReg简单地通过reg返回“reg(name)”
char *getReg(char *name, char **reg)
{
    char *targetReg = "";
    targetReg = concat(3, "reg(", name, ")");
    *reg = (char *)malloc(strlen(targetReg));
    strcpy(*reg, targetReg);
    return "";
}

int numNotations(Notation *notation)
{
    int n = 0;
    for (Notation *p = notation; p != NULL; p = p->next)
    {
        n++;
    }
    return n;
}