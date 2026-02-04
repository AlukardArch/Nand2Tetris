def CodeWriter(line):
    code = []

    destTable = {
        "local": "LCL",
        "argument": "ARG",
        "this": "THIS",
        "that": "THAT",
        "constant": "con",
    }
    # load array of command
    if len(line) < 3:
        # its artithmetic (for now)
        commandType = line[0]

        if commandType == "add":
            code = ["//add", "@SP", "A=M-1", "D=M", "@SP", "M=M-1", "A=M-1", "M=D+M"]
        elif commandType == "sub":
            code = ["//sub", "@SP", "A=M-1", "D=M", "@SP", "M=M-1", "A=M-1", "M=M-D"]
        elif commandType == "neg":
            code = ["//neg", "@SP", "A=M-1", "M=-M"]
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
    commandType = line[0]
    dest = destTable[line[1]]
    i = line[2]
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
