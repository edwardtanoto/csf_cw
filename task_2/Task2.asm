// scyet1 Edward TANOTO 20212551

// Task 1: Power x RAM[0] and y RAM[1] and output it in z RAM[2]
// Power value of x to y and output in in Z

@R0               //inserting value of ram0 to X
D=M
@X               //taking value of x into new variable result so x*1
D=M
@R1
D = M
@Y
M=D
@y-equal-zero
D; JEQ           //if y is zero, jump to @y-equal-zero

@X
D = M

@x-equal-zero    //if y is zero, jump to @x-equal-zero
D; JEQ


@COUNT_ONE               //use count variable to loop power
M=1

@output         
M=D
@loop-power
0;JMP

(x-equal-zero)       
@R2               //y to power of 0 is always 0 
M=0
@END           
0;JMP         

(y-equal-zero)
@R2               //y to power of 0 is always 01
M=1
@END           
0;JMP


(loop-power)
@Y               // using varibale Y as new var for multiplication
D=M
@multiply
M=D                                                                             
@COUNT_ONE               //COUNT_ONE = multiply
D=M                                                                             
@multiply     //if COUNT_ONE less than y and if COUNT_ONE equals y then jumps to stop
D=M-D                                                                           
@STOP-POWER  
D;JEQ                                                                         
@COUNT_TWO        // COUNT_TWO is created to loop multiplication 
M=0
@X               //creating a variable temp2 be the X in multiplication 
D=M
@temp2
M=D
@output          //creating a variable temp1 to be Y which will be the temp1 in multiplication
D=M
@temp1
M=D

@Loop-Multiply
0;JMP

(Loop-Multiply)
@temp2            //using temp2 to multiply          
D=M                                                                             
@multiply
M=D                                                                             
@COUNT_TWO               //incrementing COUNT_TWO to avoid multiply times 1 loop
D=M+1                                                                           
@multiply        //if COUNT_TWO < x and if COUNT_TWO = x, jump
D=M-D                                                                           
@STOP-MULTIPLY                                                                        
D;JEQ                                                                         

@temp1            //taking the value of temp1 and adding it to result      
D=M                                                                             
@output
M=M+D                                                                           
@COUNT_TWO               //incrementing COUNT_TWO++
M=M+1                                                                           
@Loop-Multiply
0;JMP    

(STOP-POWER)          
@output          //store final result in RAM[2]
D=M
@R2              
M=D
@END
0;JMP

(STOP-MULTIPLY)
@COUNT_ONE               //incrementing COUNT_ONE++ 
M=M+1                                                                                                         
@loop-power
0;JMP

@END             //jump to end
0; JMP

(END)
@END
0;JMP            //end