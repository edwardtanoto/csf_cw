** csf_cw **
(COMP1036) Computer Fundamentals Courseworks. Part of nand2tetris.org course.

## Coursework 1

**Task 1 **
Input:
Write a database using the hardware simulator

**Task 2 **
Input:
Take the functionality of Task 1 and add the ability for the data entry to happen sequentially. So if sequential load (sl) is turned on data will be entered onto the RAM in sequential order and will overwrite existing values once the RAM is full. In effect, this is creating Sequential Access Memory (SAM)

**Task 3 **
Input:
Take the functionality of Task 1 and 2 and add the ability to use a 1 bit entry called ‘priority’.
Output:
When priority is equal to 1, the chip will calculate the sum of all ID values stored in RAM and output the value to sum[16], if this value is greater than the maximum value for a 16 bit signed integer then the overflow value should equal 1

## Coursework 2

CSF Coursework 2 consists of the following tasks:

1. To implement a modulo function of integers z=x mod y, where x, y, z are signed
integers, and z is the remainder of x/y. You should store x, y, z in RAM[0], RAM[1] and RAM[2], respectively. Name your assembly file as Task1.asm. (7 marks in total. 4 marks for 4 tests, 1 marks for documentation, 1 mark for good programming practice and 1 mark for program efficiency.)
Hint: Use Octave function “z=mod(x,y)” to check what should be the desired output if you are not sure. You can find the online Octave here:
https://octave-online.net/

2. To implement a power function of integers z=x^y, where x, y, z are non-negative integers. You should store x, y, z in RAM[0], RAM[1] and RAM[2], respectively. Name your assembly file as Task2.asm. (7 marks in total. 4 marks for 4 tests, 1 mark for documentation, 1 mark for good programming practice and 1 mark for program efficiency.)
