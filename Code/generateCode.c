#include "generateCode.h"
#include <stdlib.h>

char *generateCode(Function *functions)
{
    char *result = "";
    //TODO: implement
    for (Function *f = functions; f != NULL; f = f->next)
    {
        AddrDescriptor* localAD = analyzeFunction(f);
        outputFunction(f);
        printAddrDescriptor(localAD);
        result = concat(2, result, handleFunction(f, localAD));
        // freeAddrDescriptor(localAD);
    }
    return result;
}

char *handleFunction(Function *function, AddrDescriptor* localAD)
{
    char *result = "";
    //TODO: implement
    for (Line *line = function->lines; line != NULL; line = line->next)
    {
        result = concat(2, result, handleLine(line, localAD));
    }
    return result;
}
 

// 分析函数function
//     1） 给出function所需要的所有变量的总空间大小
//     2） 依照每个变量出现的先后次序，设置变量在栈中相对栈顶的偏移量
AddrDescriptor* analyzeFunction(Function* function)
{
    int spaceRequired = 0;
    AddrDescriptor* localAD = initAddrDescriptor(HASH_SIZE);
    for(Line* line = function->lines; line != NULL; line = line->next)
    {
        Notation* notations = line->notations;
        Notation* _1stNotation = getNotation(notations, 0);
        if(strcmp("DEC", _1stNotation->content) == 0)
        {
            Notation* _2ndNotation = getNotation(notations, 1);
            Notation* _3rdNotation = getNotation(notations, 2);
            int space = atoi(_3rdNotation->content);
            ADItem* item = createAdItem(_2ndNotation->content);
            setOffset(item, spaceRequired);
            spaceRequired += space;
            aDInsert(localAD, item);
        }
        else if(strcmp("PARAM", _1stNotation->content) == 0){
            Notation* _2ndNotation = getNotation(notations, 1);
            ADItem* item = createAdItem(_2ndNotation->content);
            setOffset(item, spaceRequired);
            spaceRequired += 4;
            aDInsert(localAD, item);
        }
        else if(_1stNotation->content[0] == 't' || _1stNotation->content[0] == 'v')
        {
            if(!aDContains(localAD, _1stNotation->content))
            {
                ADItem* item = createAdItem(_1stNotation->content);
                setOffset(item, spaceRequired);
                spaceRequired += 4;
                aDInsert(localAD, item);
            }
        }
    }
    function->spaceRequired = spaceRequired;
    return localAD;
}



char *handleLine(Line *line, AddrDescriptor* localAD)
{
    char *result="";
    //TODO: implement
    Notation *notations = line->notations;
    
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
                char* temp1 = getReg(_1stNotation->content + 1, &regx, localAD);
                char* temp2 = getReg(_3rdNotation->content, &regy, localAD);
                result = concat(5, "  sw ", regy, ", 0(", regx, ")\n");
                result = concat(3, temp1, temp2, result);
            }
            // x := #k
            else if (_3rdNotation->content[0] == '#')
            {
                char *regx;
                char* temp1 = getReg(_1stNotation->content, &regx, localAD);
                result = concat(5, "  li ", regx, ", ", _3rdNotation->content + 1, "\n");
                result = concat(2, temp1, result);
            }
            // x := *y
            else if (_3rdNotation->content[0] == '*')
            {
                char *regx, *regy;
                char* temp1 = getReg(_1stNotation->content, &regx, localAD);
                char* temp2 = getReg(_3rdNotation->content + 1, &regy, localAD);
                result = concat(5, "  lw ", regx, "0(", regy, ")\n");
                result = concat(3, temp1, temp2, result);
            }
            // x := &y
            else if (_3rdNotation->content[0] == '&')
            {
                char *regx, *regy;
                char* temp1 = getReg(_1stNotation->content, &regx, localAD);
                char* temp2 = getReg(_3rdNotation->content, &regy, localAD);
                result = concat(5,"  move ", regx, ", ", regy, "\n");
                result = concat(3, temp1, temp2, result);
            }
            // x := y
            else
            {
                char *regx, *regy;
                char* temp1 = getReg(_1stNotation->content, &regx, localAD);
                char* temp2 = getReg(_3rdNotation->content, &regy, localAD);
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
                char* temp1 = getReg(_1stNotation->content, &regx, localAD);
                char* temp2 = getReg(_3rdNotation->content, &regy, localAD);
                char* temp3 = getReg(_5thNotation->content, &regz, localAD);
                result = concat(7,"  mul ", regx, ", ", regy, ", ", regz, "\n");
                result = concat(4, temp1, temp2, temp3, result);
            }
            // // Var1 := Var2 / Var3
            else if(strcmp(_4thNotation->content, "/") == 0)
            {
                char *regx, *regy, *regz;
                char* temp1 = getReg(_1stNotation->content, &regx, localAD);
                char* temp2 = getReg(_3rdNotation->content, &regy, localAD);
                char* temp3 = getReg(_5thNotation->content, &regz, localAD);
                result = concat(7, "  div ", regy, ", ", regz, "\n  mflo ", regx, "\n");
                result = concat(4, temp1, temp2, temp3, result);
            }
            // Var1 := Var2 + Var3
            else if(strcmp(_4thNotation->content, "+") == 0){
                if(_3rdNotation->content[0] == '#')
                {
                    char* regx, *regy;
                    char* temp1 = getReg(_1stNotation->content, &regx, localAD);
                    char* temp2 = getReg(_5thNotation->content, &regy, localAD);
                    result = concat(7,"  addi ", regx, ", ", regy, ", ", _3rdNotation->content + 1, "\n");
                    result = concat(3, temp1, temp2, result);
                }
                else if(_5thNotation->content[0] == '#')
                {
                    char* regx, *regy;
                    char* temp1 = getReg(_1stNotation->content, &regx, localAD);
                    char* temp2 = getReg(_3rdNotation->content, &regy, localAD);
                    result = concat(7,"  addi ", regx, ", ", regy, ", ", _5thNotation->content + 1, "\n");
                    result = concat(3, temp1, temp2, result);
                }
                else {
                    char *regx, *regy, *regz;
                    char* temp1 = getReg(_1stNotation->content, &regx, localAD);
                    char* temp2 = getReg(_3rdNotation->content, &regy, localAD);
                    char* temp3 = getReg(_5thNotation->content, &regz, localAD);
                    result = concat(7,"  add ", regx, ", ", regy, ", ", regz, "\n");
                    result = concat(4, temp1, temp2, temp3, result);
                }
            }
            else if(strcmp(_4thNotation->content, "-") == 0){
                if(_3rdNotation->content[0] == '#')
                {
                    char* regx, *regy;
                    char* temp1 = getReg(_1stNotation->content, &regx, localAD);
                    char* temp2 = getReg(_5thNotation->content, &regy, localAD);
                    result = concat(7,"  addi ", regx, ", ", regy, ", -", _3rdNotation->content + 1, "\n");
                    result = concat(3, temp1, temp2, result);
                }
                else if(_5thNotation->content[0] == '#')
                {
                    char* regx, *regy;
                    char* temp1 = getReg(_1stNotation->content, &regx, localAD);
                    char* temp2 = getReg(_3rdNotation->content, &regy, localAD);
                    result = concat(7,"  addi ", regx, ", ", regy, ", -", _5thNotation->content + 1, "\n");
                    result = concat(3, temp1, temp2, result);
                }
                else {
                    char *regx, *regy, *regz;
                    char* temp1 = getReg(_1stNotation->content, &regx, localAD);
                    char* temp2 = getReg(_3rdNotation->content, &regy, localAD);
                    char* temp3 = getReg(_5thNotation->content, &regz, localAD);
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
            char* temp1 = getReg(_1stNotation->content, &regx, localAD);
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
            result = (char *)malloc(strlen(_2ndNotation->content)+1);
            strcpy(result, _2ndNotation->content);
            result = concat(2, result, ":\n");
        }
        // GOTO x
        else if (strcmp(_1stNotation->content, "GOTO") == 0)
        {
            result = (char *)malloc(strlen(_2ndNotation->content)+1);
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
                char* temp1 = getReg(ret, &reg, localAD);
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
            char* temp1 = getReg(_2ndNotation->content, &regx, localAD);
            char* temp2 = getReg(_4thNotation->content, &regy, localAD);
            result = concat(7, branch, regx, ", ", regy, ", ", _6thNotation->content, "\n");
            result = concat(3, temp1, temp2, result);
        }
    }
    return result;
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