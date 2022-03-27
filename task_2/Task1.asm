// scyet1 Edward TANOTO 20212551

// Task 1: Calculate a mod of x RAM[0] and y RAM[1] and output it in z RAM[2]
// We have to validate if the user enter negative inputs, and acts accordingly.
 
@R0                                         // represents number in RAM[0]
D=M                                        // means we want to access the data R0
@output                                    // store it in a variable output
M=D

// check if one of them negative, and jump accordingly to the condition

@if-x-positive                           //if x positive
D;JGT    
@if-x-negative                           //if x negative
D;JLT

//if both input positive

(if-both-input-positive)
@R1                                         // represents number in RAM[1], which is Y
D=M
@output                                    // output = x - y
D=M-D
@stop-both-positive                          //if it cant be substracted, then stop
D;JLT
@output
M=D 	                                   //storing the result in output
@if-both-input-positive
0;JMP                                      // loop 

// if x value is positive

(if-x-positive)
@R1		                                   //taking y value in ram1 into d register
D=M               
@if-x-positive-y-negative     
D;JLT                                       

@if-both-input-positive                  
D;JGT

// if y is negative and x is positive

(if-x-positive-y-negative)
@R0                                        //checking if x is negative
D=M
@negative-X                                   
D;JLT
@negative-Y                                   
0;JMP

(negative-X)                                   //if x is negative
@R0                                            //calculating -x in output
D=-M
@output
M=D
@R1                                        // put y to varY
D=M
@varY
M=D
@LOOP                                    
0;JMP

(negative-Y)                               // if y is negative
@R0                                        // put x into output
D=M
@output
M=D
@R1                                        //taking -y into varY
D=-M
@varY
M=D

(LOOP)
@varY
D=M
@output                                   // calculate x - y
D=M-D
@stop-if-one-input-negative           // stop if it cant be calculated
D;JLT
@output
M=D 	                                  //storing the result value to output
@LOOP
0;JMP                                     // loop

// if both of them negative

(if-both-negative)           
@R0                                        //store -x to output
D=-M
@output
M=D
@R1                                        //store -y to variable varY
D=-M
@varY
M=D

(LOOP1)
@varY                                    // calculate x-y in the output
D=M
@output  
D=M-D
@stop-both-negative                         // stop if cant be calculated anymore 
D;JLT
@output
M=D 	                                  //storing the result value to output
@LOOP1
0;JMP                                     // loop

//  if the x is negative

(if-x-negative)
@R1                            //store y in ram1 to the register
D=M                                        

@if-x-positive-y-negative    
D;JGT
@if-both-negative                    
D;JLT

//  Every stop conditions

(stop-both-positive)                        
@output                                    // store output in output variable
D=M
@R2                                         //storing it in Z which is RAM2
M=D
@END
0;JMP

(stop-if-one-input-negative)         
@output                                   // store output in output variable
D=M
@R2                                        //storing the output in RAM2
M=D
D=M
@END                                     
D; JEQ
@0
D=M
@stop-if-x-positive                               //if x is positive
D;JGT
@R1
D=M
@R2                                        //storing the output in RAM2
M=D-M
@END
0;JMP

(stop-if-x-positive)
@R1                                        //turn negative y into positive y
D=-M
@R2                                        //storing the output in RAM2
M=D-M
M=-M
@END
0;JMP
(stop-both-negative)
@output                                   // store negative output of mod
D=-M
@R2                                        //storing the output in RAM2
M=D

(END)
@END        
0;JMP                                     //end of code