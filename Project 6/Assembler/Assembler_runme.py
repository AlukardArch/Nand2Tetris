import os, sys
#Importing my first passer to generate symbol table
from First_pass import *
from Machine_code_gen import *

#importing asm file into a list of strings (one string per line)
with open("program.asm", "r") as file:
    assembly_code = file.readlines()

#results of first passer stored as symbol table
Symbol_table = first_pass(assembly_code)
print(Symbol_table)

#2nd pass to genertate code
machine_code = machine_code_gen(assembly_code, Symbol_table)

with open("program.hack", "w") as file:
    for instruction in machine_code:
        file.write(instruction +"\n") #starts new line after next instruction