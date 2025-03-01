//clearing output from previos shit
@R2
M=0

//loading R0
@R0
D=M

//setting up N earlier as will need RO as N later
@N
M=D

//check if R0 = 0
@zero
D;JEQ

//check if R0=1
@one
D-1;JEQ

//loading R1
@R1
D=M

//setting up M earlier as will need R1 as M later
@M
M=D

//checking if R1 = 0
@zero
D;JEQ

//if R1=1 than R2=R0
@two
D-1;JEQ

(loop)
//if R0>1 and R1>1 than R0*R1 = R1+R1+n+
//where loop goes only if R0>1

//loading R1
@R1
D=M

//adding M to R0 as R1>1 so at least 2 = R0+R0
@M
M=D+M

//checking N and subtracking 1
@N
D=M-1

//saving subtracted N
@N
M=D

//loading M
@M
D=M

//setting value of R2 as M
@R2
M=D

//checking if N is still grater than 1 else end
@N
D=M

//test if all addition done
@END
D-1;JEQ

//if not jump to loop and do it again
@loop
0;JMP

(one)
//loading R1
@R1
D=M

//R2 = R1 cuz R0=1
@R2
M=D

//goes to end
@END
0;JMP

(two)
//loading R0
@R0
D=M

//R0=R2 cuz R1=1
@R2
M=D

@END
0;JMP

(zero)
@R2
M=0

(END)
@END
0;JMP