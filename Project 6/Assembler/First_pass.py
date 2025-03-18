def first_pass(assembly_code):

#Table of known symbols
    Symbol_table = {
        "SP": "0",
        "LCL":"1",
        "ARG": "2",
        "THIS": "3",
        "THAT": "4",
        "R0": "0",
        "R1": "1",
        "R2": "2",
        "R3": "3",
        "R4": "4",
        "R5": "5",
        "R6": "6",
        "R7": "7",
        "R8": "8",
        "R9": "9",
        "R10": "10",
        "R11": "11",
        "R12": "12",
        "R13": "13",
        "R14": "14",
        "R15": "15",
        "SCREEN": "16384",
        "KBD": "24576",
    }

    address = 0 #Memory address counter

    for line in assembly_code: #iterate over each line in code
        
        #Remove whitespace and comments
        #.strip removes whitespaces at the begining and end of a string
        line = line.strip()

        #if line is a comment or line is empty
        if line.startswith("//") or line == "":
            continue #makes a skip of comment or empty line

        #checking if line a label: all labels have ()
        if line.startswith("(") and line.endswith(")"):
            label = line[1:-1] #Extract the label name
            Symbol_table[label] = address #Add label to symbol table
        else:
            address += 1 #Iterate further counter for A or C insturctions
            
    return Symbol_table
        