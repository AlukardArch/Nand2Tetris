def CodeWriter(line):
    code = []
    code = line.split()

    destTable = {
        "local": "LCL",
        "argument": "ARG",
        "this": "THIS",
        "that": "THAT",
        "constant": "con",
    }
    # load array of command
    if len(code) < 3:
        # its artithmetic (for now)
        commandType = code[0]

        if commandType == "add":
            code = ["//add", "@SP", "A=M-1", "D=M", "@SP", "M=M-1", "A=M-1", "M=D+M"]
            return code
        elif commandType == "sub":
            code = ["//sub", "@SP", "A=M-1", "D=M", "@SP", "M=M-1", "A=M-1", "M=M-D"]
            return code
        elif commandType == "neg":
            code = ["//neg", "@SP", "A=M-1", "M=-M"]
            return code
        elif commandType == "eq":
            code = 0
        elif commandType == "gt":
            code = 0
        elif commandType == "lt":
            code = 0
        elif commandType == "and":
            code = 0
        elif commandType == "or":
            code = 0
        elif commandType == "not":
            code = 0
    # else its push or pop
    commandType = code[0]
    dest = destTable[code[1]]
    i = code[2]
    # push (separate for constant)
    if commandType == "push":
        if dest == "con":
            code = [
                "//push constant " + i,
                "@" + i,
                "D=A",
                "@SP",
                "A=M",
                "M=D",
                "@SP",
                "M=M+1",
            ]
            return code
        else:
            code = [
                "//push " + line[1] + " " + i,
                "@" + i,
                "D=A",
                "@" + dest,
                "D=D+M",
                "A=D",
                "D=M",
                "@SP",
                "A=M",
                "M=D",
                "@SP",
                "M=M+1",
            ]
            return code
    # pop
    if commandType == "pop":
        code = [
            "//pop " + line[1] + " " + i,
            "@" + i,
            "D=A",
            "@" + dest,
            "M=M+D",
            "@SP",
            "M=M-1",
            "A=M",
            "D=M@" + dest,
            "A=M",
            "M=D",
            "@" + i,
            "D=A",
            "@" + dest,
            "M=M-D",
        ]
        return code

    return code
