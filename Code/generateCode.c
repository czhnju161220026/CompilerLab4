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
                char* temp1 = getReg(_1stNotation->content + 1, &regx);
                char* temp2 = getReg(_3rdNotation->content, &regy);
                result = concat(5, "  sw ", regy, ", 0(", regx, ")\n");
                result = concat(3, temp1, temp2, result);
            }
            // x := #k
            else if (_3rdNotation->content[0] == '#')
            {
                char *regx;
                char* temp1 = getReg(_1stNotation->content, &regx);
                result = concat(5, "  li ", regx, ", ", _3rdNotation->content + 1, "\n");
                result = concat(2, temp1, result);
            }
            // x := *y
            else if (_3rdNotation->content[0] == '*')
            {
                char *regx, *regy;
                char* temp1 = getReg(_1stNotation->content, &regx);
                char* temp2 = getReg(_3rdNotation->content + 1, &regy);
                result = concat(5, "  lw ", regx, "0(", regy, ")\n");
                result = concat(3, temp1, temp2, result);
            }
            // x := &y
            else if (_3rdNotation->content[0] == '&')
            {
                result = "  TODO: x := &y\n";
            }
            // x := y
            else
            {
                char *regx, *regy;
                char* temp1 = getReg(_1stNotation->content, &regx);
                char* temp2 = getReg(_3rdNotation->content, &regy);
                result = concat(5, "  move ", regx, ", ", regy, "\n");
                result = concat(3, temp1, temp2, result);
            }
        }
        //Var1 := Var2 op Var3
        //也可能有立即数参与
        else if (numNotations(notations) == 5)
        {
            //result = "  TODO: Var1 := Var2 op Var3\n";
            Notation *_1stNotation = getNotation(notations, 0); //Var1
            Notation *_3rdNotation = getNotation(notations, 2); // Var2
            Notation *_4thNotation = getNotation(notations, 3); // op
            Notation *_5thNotation = getNotation(notations, 4); // Var3
            // Var1 := Var2 * Var3
            if(strcmp(_4thNotation->content, "*") == 0 )
            {
                char *regx, *regy, *regz;
                char* temp1 = getReg(_1stNotation->content, &regx);
                char* temp2 = getReg(_3rdNotation->content, &regy);
                char* temp3 = getReg(_5thNotation->content, &regz);
                result = concat(7,"  mul ", regx, ", ", regy, ", ", regz, "\n");
                result = concat(4, temp1, temp2, temp3, result);
            }
            // // Var1 := Var2 / Var3
            else if(strcmp(_4thNotation->content, "/") == 0)
            {
                char *regx, *regy, *regz;
                char* temp1 = getReg(_1stNotation->content, &regx);
                char* temp2 = getReg(_3rdNotation->content, &regy);
                char* temp3 = getReg(_5thNotation->content, &regz);
                result = concat(7, "  div ", regy, ", ", regz, "\n  mflo ", regx, "\n");
                result = concat(4, temp1, temp2, temp3, result);
            }
            // Var1 := Var2 + Var3
            else if(strcmp(_4thNotation->content, "+") == 0){
                if(_3rdNotation->content[0] == '#')
                {
                    char* regx, *regy;
                    char* temp1 = getReg(_1stNotation->content, &regx);
                    char* temp2 = getReg(_5thNotation->content, &regy);
                    result = concat(7,"  addi ", regx, ", ", regy, ", ", _3rdNotation->content + 1, "\n");
                    result = concat(3, temp1, temp2, result);
                }
                else if(_5thNotation->content[0] == '#')
                {
                    char* regx, *regy;
                    char* temp1 = getReg(_1stNotation->content, &regx);
                    char* temp2 = getReg(_3rdNotation->content, &regy);
                    result = concat(7,"  addi ", regx, ", ", regy, ", ", _5thNotation->content + 1, "\n");
                    result = concat(3, temp1, temp2, result);
                }
                else {
                    char *regx, *regy, *regz;
                    char* temp1 = getReg(_1stNotation->content, &regx);
                    char* temp2 = getReg(_3rdNotation->content, &regy);
                    char* temp3 = getReg(_5thNotation->content, &regz);
                    result = concat(7,"  add ", regx, ", ", regy, ", ", regz, "\n");
                    result = concat(4, temp1, temp2, temp3, result);
                }
            }
            else if(strcmp(_4thNotation->content, "-") == 0){
                if(_3rdNotation->content[0] == '#')
                {
                    char* regx, *regy;
                    char* temp1 = getReg(_1stNotation->content, &regx);
                    char* temp2 = getReg(_5thNotation->content, &regy);
                    result = concat(7,"  addi ", regx, ", ", regy, ", -", _3rdNotation->content + 1, "\n");
                    result = concat(3, temp1, temp2, result);
                }
                else if(_5thNotation->content[0] == '#')
                {
                    char* regx, *regy;
                    char* temp1 = getReg(_1stNotation->content, &regx);
                    char* temp2 = getReg(_3rdNotation->content, &regy);
                    result = concat(7,"  addi ", regx, ", ", regy, ", -", _5thNotation->content + 1, "\n");
                    result = concat(3, temp1, temp2, result);
                }
                else {
                    char *regx, *regy, *regz;
                    char* temp1 = getReg(_1stNotation->content, &regx);
                    char* temp2 = getReg(_3rdNotation->content, &regy);
                    char* temp3 = getReg(_5thNotation->content, &regz);
                    result = concat(7,"  sub ", regx, ", ", regy, ", ", regz, "\n");
                    result = concat(4, temp1, temp2, temp3, result);
                }
            }
        }
        // Var1 := call Function
        else if (numNotations(notations) == 4)
        {
            //result = "  TODO: ar1 := call Function\n";
            Notation *_1stNotation = getNotation(notations, 0); //Var1
            Notation *_4thNotation = getNotation(notations, 3); //Function
            char* regx;
            char* temp1 = getReg(_1stNotation->content, &regx);
            result = concat(5, "  jal ", _4thNotation->content, "\n  move ", regx, ", $v0\n");
            result = concat(2, temp1, result);
        }
    }
    else
    {
        Notation *_1stNotation = getNotation(notations, 0);
        // Label x
        if (strcmp(_1stNotation->content, "LABEL") == 0 || strcmp(_1stNotation->content, "FUNCTION") == 0)
        {
            result = (char *)malloc(strlen(_2ndNotation->content));
            strcpy(result, _2ndNotation->content);
            result = concat(2, result, ":\n");
        }
        // GOTO x
        else if (strcmp(_1stNotation->content, "GOTO") == 0)
        {
            result = (char *)malloc(strlen(_2ndNotation->content));
            strcpy(result, _2ndNotation->content);
            result = concat(3, "  j ", result, "\n");
        }
        // Return x
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
                char* temp1 = getReg(ret, &reg);
                result = concat(3, "  move $v0, ", reg, "\n  jr $ra\n");
                result = concat(2, temp1, result);
            }
        }
        // IF x relop y GOTO z
        else if (strcmp(_1stNotation->content, "IF") == 0)
        {
            //TODO: 比较数可能是一个立即数
            //result = "  --condition statement--\n";
            Notation *_2ndNotation = getNotation(notations, 1); //x
            Notation *_3rdNotation = getNotation(notations, 2); //relop
            Notation *_4thNotation = getNotation(notations, 3); //y
            Notation *_6thNotation = getNotation(notations, 5); //z
            char *branch = "";
            if (strcmp(_3rdNotation->content, "==") == 0)
            {
                branch = "  beq ";
            }
            else if (strcmp(_3rdNotation->content, "!=") == 0)
            {
                branch = "  bne ";
            }
            else if (strcmp(_3rdNotation->content, ">") == 0)
            {
                branch = "  bgt ";
            }
            else if (strcmp(_3rdNotation->content, "<") == 0)
            {
                branch = "  blt ";
            }
            else if (strcmp(_3rdNotation->content, ">=") == 0)
            {
                branch = "  bge ";
            }
            else if (strcmp(_3rdNotation->content, "<=") == 0)
            {
                branch = "  ble ";
            }

            char *regx, *regy;
            char* temp1 = getReg(_2ndNotation->content, &regx);
            char* temp2 = getReg(_4thNotation->content, &regy);
            result = concat(7, branch, regx, ", ", regy, ", ", _6thNotation->content, "\n");
            result = concat(3, temp1, temp2, result);
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

int numNotations(Notation *notation)
{
    int n = 0;
    for (Notation *p = notation; p != NULL; p = p->next)
    {
        n++;
    }
    return n;
}