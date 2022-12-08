# lmc
stuff about little man computer

[Little man computer emulator](https://peterhigginson.co.uk/lmc/)


```
Instruction set 

Code    Name         Description          
0       HLT          Stop (Little Man has a rest).          
1       ADD          Add the contents of the memory address to the Accumulator       
2       SUB          Subtract the contents of the memory address from the Accumulator         
3       STA/STO      Store the value in the Accumulator in the memory address given.                 
4                    This code is unused and gives an error.    
5       LDA          Load the Accumulator with the contents of the memory address given     
6       BRA          Branch - use the address given as the address of the next instruction         
7       BRZ          Branch to the address given if the Accumulator is zero     
8       BRP          Branch to the address given if the Accumulator is zero or positive 

Next 3 instructions share opcode 9 but use operand to select operation              

901     INP          Take input and place in accumulator        
902     OUT          Output accumulator as a number 
922     OTC          Output accumulator as a character  

        DAT          Used to indicate a location that contains data. 
```
