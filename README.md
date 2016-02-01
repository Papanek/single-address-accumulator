# single-address-accumulator

Inside assembler.m4 you need to include the txt file that has the assembly code for the program.

Run the assembler.m4 through m4 macro processor. m4's output will be the machine code for the single address accumulator.

Redirect m4's output to a file called machineCode.txt

The short c program implements the single address accumulator which reads instructions from machineCode.txt

Assembly Instructions:

STOP 0                                           
LD 1                                         
STO 2                                         
ADD 3                                         
SUB 4                                         
MPY 5                                         
DIV 6                                         
IN 7    ( input )                                        
OUT 8   ( output )                                        
BR 9    ( branch )                                       
BZ 10   ( branch if accumulator = 0 )                                        
BGTR 11 ( branch if accumulator > 0 )                                        
