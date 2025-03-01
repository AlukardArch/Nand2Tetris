//if KBD > 0 
   // than SCREEN - Black
   // else Screen - White


//set get value of last SCREEN reg (KBD reg - 1
@KBD
D=A-1

//go to R0 and set it value to last screen reg
@R0
M=D

//wipe keyboard input to 0
@KBD
M=0
(loop)

//get first screen adress
@SCREEN
D=A
//save it as M
@M
M=D
D=M
//set M as N
@N
M=D

//get keyboard input
@KBD
D=M

//if not zero than screen black
@black
D;JGT

//else screen white
@white
D;JEQ

(black)

@R0
D=M

//if n = R0 than all pixels black go to loop
@N
D=D-M

@loop
D;JLT

//ensured that first pixel is black
@N
D=M
A=D
M=-1

//goes ot next pixel and not changing it to black to not overflow
@N
M=D+1


//back to black loop
@black
0;JMP


(white)

@R0
D=M

@N
D=D-M

@loop
D;JLT

//ensures that first pixel is change to white
@N
D=M
A=D
M=0

//goes to next pixel and changes it to white
@N
M=D+1


//back to white loop
@white
0;JMP

 (END)
 @END
 0;JMP
