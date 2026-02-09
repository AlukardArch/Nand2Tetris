def CodeWriter(line):
    code = []
    code = line.split()

    destTable = {
        "local": "LCL",
        "argument": "ARG",
        "this": "THIS",
        "that": "THAT",
        "constant": "constant",
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
            code = [
                "@SP",
                "A=M-1",
                "D=M",
                "@SP",
                "M=M-1",
                "A=M-1",
                "@TRUE",
                "D;JEQ",
                "@SP",
                "A=M-1",
                "M=0",
                "@END",
                "0;JMP",
                "(TRUE)",
                "@SP",
                "A=M-1",
                "M=-1",
                "(END)",
            ]
        elif commandType == "gt":
            code = 0
        elif commandType == "lt":
            code = 0
        elif commandType == "and":
            code = [
                "@SP",
                "A=M-1",
                "D=1",
                "D=D+M",
                "@TRUE",
                "D;JEQ",
                "@SP",
                "M=M-1",
                "A=M-1",
                "M=0",
                "@END",
                "0;JMP",
                "(TRUE)",
                "@SP",
                "M=M-1",
                "A=M-1",
                "D=1",
                "D=D+M",
                "@TTRUE",
                "D;JEQ",
                "@SP",
                "A=M-1",
                "M=0",
                "@END",
                "0;JMP",
                "(TTRUE)",
                "@SP",
                "A=M-1",
                "M=-1",
                "(END)",
            ]
        elif commandType == "or":
            code = [
                "@SP",
                "A=M-1",
                "D=1",
                "D=D+M",
                "@TRUE",
                "D;JEQ",
                "@SP",
                "M=M-1",
                "A=M-1",
                "D=1",
                "D=D+M",
                "@TRUE",
                "D;JEQ",
                "@SP",
                "A=M-1",
                "M=0",
                "@END",
                "0;JMP",
                "(TRUE)",
                "@SP",
                "A=M-1",
            ]
        elif commandType == "not":
            code = [
                "@SP",
                "A=M-1",
                "D=M",
                "@FALSE",
                "D;JEQ",
                "M=0",
                "@END",
                "0;JMP",
                "(FALSE)",
                "@SP",
                "A=M-1",
                "M=-1",
                "(END)",
                "0;JMP",
            ]
    # else its push or pop
    commandType = code[0]
    dest = code[1]
    dst = destTable.get(dest)
    dst = str(dst)
    i = code[2]
    # push (separate for constant)
    if commandType == "push":
        if dst == "constant":
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
                "//push " + dest + " " + i,
                "@" + i,
                "D=A",
                "@" + dst,
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
            "//pop " + dest + " " + i,
            "@" + i,
            "D=A",
            "@" + dst,
            "M=M+D",
            "@SP",
            "M=M-1",
            "A=M",
            "D=M",
            "@" + dst,
            "A=M",
            "M=D",
            "@" + i,
            "D=A",
            "@" + dst,
            "M=M-D",
        ]
        return code

    return code
