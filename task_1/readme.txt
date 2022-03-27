COMP 1036 Coursework Part 1

*** Inputs ***


    inID[16]    :   ID
    inMARK[16]  :   Mark
    load        :   Load    (if load equals 1 && sl equals 0, inID and inMARK will be stored in the database based on address)
                            (however, if sl equals to 1, id and mark will be continuosly stored into the database)

    probe       :   Probe   (if probe equals 1 && sl equals 0, inID and inMARK will be stored in the database based on address)
                            (however, if sl equals to 1, id and mark will be continuosly stored into the database)

    address[3]  :   Address     (the address where the data is stored)
    sl          :   Sequential Loader   
    priority    :   Priority    


*** Outputs ***


    outID[16]   : output ID
    outMARK[16] : output Mark
    sum[16]     : value of all id inside each database is calculated here
    overflow    : if sum of id is more than the space of 16 bit positive integer


*** Chips ***

Register        : Can save the value of ID and Mark to an address
EqualID         : See if ID is the same
Mux16           : 16 bit multiplexor. If sel is 1 then out=b, else out=a.
Or16            : 16 bit bitwise Or gate: for i = 0...15 out[i] = a[i] Or b[i]
And             : And gate output = 1 if both a and b is 1, 0 otherwise
Register3Bit    : 3 bit version of register    
Mux3            : 3 bit version of Mux
DMux8Way        : 8 way demultiplexor
Add16           : 16 bit add
AddOne3Bit      : Increment 3 Bit after next button clicked
Or              : Or gate output