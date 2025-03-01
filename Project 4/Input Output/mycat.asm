


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
@draw
D;JGT

//else screen white
@white
D;JEQ


(draw)
	// put bitmap location value in R12
	// put code return address in R13
	@SCREEN
	D=A
	@R12
	AD=D+M
	// row 1
	@17408 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@16260 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@99 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 2
	AD=A+1 // D holds addr
	@17408 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@4216 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@49 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 3
	AD=A+1 // D holds addr
	@17408 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	@17 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 4
	AD=A+1 // D holds addr
	@17408 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	@25 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 5
	AD=A+1 // D holds addr
	@17408 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	@10 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 6
	AD=A+1 // D holds addr
	@25600 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@2031 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@24 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 7
	AD=A+1 // D holds addr
	@13312 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@29686 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@17 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 8
	AD=A+1 // D holds addr
	@5120 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@15364 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@33 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 9
	AD=A+1 // D holds addr
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@11786 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@33 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 10
	AD=A+1 // D holds addr
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@16878 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@33 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 11
	AD=A+1 // D holds addr
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@1023 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@32 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 12
	AD=A+1 // D holds addr
	@1024 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	@32 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 13
	AD=A+1 // D holds addr
	@3072 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	@32 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 14
	AD=A+1 // D holds addr
	@2048 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@2016 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@48 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 15
	AD=A+1 // D holds addr
	@2048 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@2016 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@16 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 16
	AD=A+1 // D holds addr
	@2048 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@960 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@16 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 17
	AD=A+1 // D holds addr
	@6144 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@256 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@24 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 18
	AD=A+1 // D holds addr
	@12288 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@768 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@12 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 19
	AD=A+1 // D holds addr
	@24576 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	@4160 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@7 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 20
	AD=A+1 // D holds addr
	@16384 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	@18317 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	M=1
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 21
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	@16258 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=A-D // RAM[addr]=-val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 22
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	@32760 // A holds val
	D=D+A // D = addr + val
	A=D-A // A=addr + val - val = addr
	M=D-A // RAM[addr] = val
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 23
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 24
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 25
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 26
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 27
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 28
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 29
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 30
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 31
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 32
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	AD=A+1 // D holds addr
	M=0
	// row 33

@loop
0;JMP

(white)

@R0
D=M

@N
D=D-M

@loop
D;JEQ

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