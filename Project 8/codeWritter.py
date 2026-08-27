class CodeWriter:
    DESTINATIONS = {
        "local": "LCL",
        "argument": "ARG",
        "this": "THIS",
        "that": "THAT",
        "constant": "constant",
    }
    FIXED_SEGMENTS = {"temp": 5, "pointer": 3}

    ARITHMETIC_COMMANDS = {"add", "sub", "neg", "eq", "gt", "lt", "and", "or", "not"}

    def __init__(self, output_file):
        self.output_file = output_file
        self.label_number = 0
        self.file_name = ""

    def set_file_name(self, file_name):
        self.file_name = file_name

    def write_command(self, command):
        parts = command.split()
        command_type = parts[0]

        if command_type in self.ARITHMETIC_COMMANDS:
            assembly_code = self.write_arithmetic(command_type)
        elif command_type == "push":
            assembly_code = self.write_push(parts[1], parts[2])
        elif command_type == "pop":
            assembly_code = self.write_pop(parts[1], parts[2])
        else:
            raise ValueError(f"Unknown VM command: {command_type}")

        for assembly_line in assembly_code:
            self.output_file.write(assembly_line + "\n")
        return assembly_code

    def write_arithmetic(self, command):
        if command == "add":
            return ["//add", "@SP", "A=M-1", "D=M", "@SP", "M=M-1", "A=M-1", "M=D+M"]
        if command == "sub":
            return ["//sub", "@SP", "A=M-1", "D=M", "@SP", "M=M-1", "A=M-1", "M=M-D"]
        if command == "neg":
            return ["//neg", "@SP", "A=M-1", "M=-M"]
        if command == "and":
            return [
                "//and", "@SP", "AM=M-1", "D=M", "A=A-1", "D=D&M", "M=D"
            ]
        if command == "or":
            return [
                "//or", "@SP", "AM=M-1", "D=M", "A=A-1", "D=D|M", "M=D"
            ]
        if command == "not":
            return ["//not", "@SP", "A=M-1", "M=!M"]
        if command in {"eq", "gt", "lt"}:
            return self._write_comparison(command)
        raise ValueError(f"Unknown arithmetic command: {command}")

    def _write_comparison(self, command):
        true_label = f"TRUE{self.label_number}"
        end_label = f"END{self.label_number}"
        self.label_number += 1
        jump = {"eq": "JEQ", "gt": "JGT", "lt": "JLT"}[command]
        first_value = "D=M" if command == "eq" else "D=-M"
        combine_values = "D=D-M" if command == "eq" else "D=D+M"
        return [
            f"//{command}",
            "@SP", "A=M-1", first_value, "@SP", "M=M-1", "A=M-1", combine_values,
            "@" + true_label, "D;" + jump, "@SP", "A=M-1", "M=0",
            "@" + end_label, "0;JMP", "(" + true_label + ")", "@SP", "A=M-1",
            "M=-1", "(" + end_label + ")"
        ]

    def write_push(self, segment, index):
        destination = self.DESTINATIONS.get(segment)
        if segment == "static":
            if not self.file_name:
                raise RuntimeError("set_file_name() must be called before using static")
            return [
                f"//push static {index}", f"@{self.file_name}.{index}", "D=M", "@SP",
                "A=M", "M=D", "@SP", "M=M+1",
            ]
        if segment in self.FIXED_SEGMENTS:
            address = self.FIXED_SEGMENTS[segment] + int(index)
            return [
                f"//push {segment} {index}", "@" + str(address), "D=M", "@SP", "A=M",
                "M=D", "@SP", "M=M+1",
            ]
        if destination is None:
            raise ValueError(f"Unsupported push segment: {segment}")
        if destination == "constant":
            return [
                f"//push constant {index}", "@" + index, "D=A", "@SP", "A=M", "M=D",
                "@SP", "M=M+1",
            ]
        return [
            f"//push {segment} {index}", "@" + destination, "D=M", "@" + index,
            "A=D+A", "D=M", "@SP", "A=M", "M=D", "@SP", "M=M+1",
        ]

    def write_pop(self, segment, index):
        destination = self.DESTINATIONS.get(segment)
        if segment == "static":
            if not self.file_name:
                raise RuntimeError("set_file_name() must be called before using static")
            return [
                f"//pop static {index}", "@SP", "M=M-1", "A=M", "D=M",
                f"@{self.file_name}.{index}", "M=D",
            ]
        if segment in self.FIXED_SEGMENTS:
            address = self.FIXED_SEGMENTS[segment] + int(index)
            return [
                f"//pop {segment} {index}", "@SP", "M=M-1", "A=M", "D=M",
                "@" + str(address), "M=D",
            ]
        if destination is None or destination == "constant":
            raise ValueError(f"Unsupported pop segment: {segment}")
        return [
            f"//pop {segment} {index}", "@SP", "M=M-1", "A=M", "D=M",
            "@" + destination, "D=D+M", "@" + index, "D=D+A", "@SP", "A=M",
            "A=D-M", "M=D-A",
        ]
