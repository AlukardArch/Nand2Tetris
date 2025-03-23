from convert_to_binary import *
from parse_C_instruct import *

def machine_code_gen(assembly_code, symbol_table):
    machine_code = []
    variable_address = 16 #First free memory address is 16
    #Remove whitespaces and comments
    
    for line in assembly_code: #starting loop
        line = line.strip()
        #same as first pass
        if line.startswith("//") or line == "":
                continue #skip comments and emptyy lines
        
        #Skip label as we already handled them in first pass
        if line.startswith("(") and line.endswith(")"):
            continue
        
        #if starts with "@" its instruction A else C
        if line.startswith("@"):
             value = line[1:] #Extract the value after @

             #if value is a number, convert it to binary
             if value.isdigit():
                  binary = format(int(value), "016b") #16 bit binary
             else:
                  #if value is a symbol, resolve it using the symbol table
                  if value not in symbol_table:
                       symbol_table[value] = variable_address
                       variable_address += 1
                  binary = format(symbol_table[value], "016b")
            #append machine code with A instruction
             machine_code.append(binary)
        
        #Handle C instruction
        else:
             #parse dest, comp, and jump
             dest, comp, jump = parse_C_instruction(line)

             #Convert to 16-bit binary
             binary = convert_to_binary(dest, comp, jump)
             machine_code.append(binary)

    return machine_code



    
