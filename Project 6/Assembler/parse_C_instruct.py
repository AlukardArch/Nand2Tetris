def parse_C_instruction(line):
    #Parses a C instruction into dest, comp, and jump

    dest = ""
    jump = ""
    comp = line

    #Split dest and comp
    if "=" in line:
        dest, comp = line.split("=")

    #split comp and jump
    if ";" in comp:
        comp, jump = comp.split(";")
    
    return dest, comp, jump