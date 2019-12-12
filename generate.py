import os

path = 'Test/'
files = os.listdir(path)

for f in files:
    if f.endswith('.cmm'):
        #print('./Code/parser ' + path+f + ' > advanced_ir_code/' + f.replace('.cmm', '.ir'))
        os.system('./Code/parser ' + path+f + ' Output/' + f.replace('.cmm', '.asm'))