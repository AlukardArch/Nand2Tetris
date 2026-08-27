class Parser:
    ARITHMETIC_COMMANDS = {
        "add",
        "sub",
        "neg",
        "eq",
        "gt",
        "lt",
        "and",
        "or",
        "not",
    }
    
    def __init__(self, filename):
        with open(filename, "r") as file:
            self.commands = self._read_commands(file)
        self.current_command = None
        self.position = -1

    @staticmethod
    def _read_commands(file):
        commands = []
        for line in file:
            command = line.split("//", 1)[0].strip()
            if command:
                commands.append(command)
        return commands

    def has_more_commands(self):
        return self.position + 1 < len(self.commands)

    def advance(self):
        if not self.has_more_commands():
            self.current_command = None
            return
        self.position += 1
        self.current_command = self.commands[self.position]

    def command_type(self):
        if self.current_command is None:
            raise RuntimeError("advance() must be called before reading a command")

        command = self.current_command.split()[0]
        if command in self.ARITHMETIC_COMMANDS:
            return "C_ARITHMETIC"
        if command == "push":
            return "C_PUSH"
        if command == "pop":
            return "C_POP"
        raise ValueError(f"Unknown VM command: {command}")

    def arg1(self):
        if self.current_command is None:
            raise RuntimeError("advance() must be called before reading an argument")

        parts = self.current_command.split()
        if self.command_type() == "C_ARITHMETIC":
            return parts[0]
        return parts[1]

    def arg2(self):
        if self.current_command is None:
            raise RuntimeError("advance() must be called before reading an argument")
        if self.command_type() not in {"C_PUSH", "C_POP"}:
            raise ValueError("Only push and pop commands have a second argument")
        return int(self.current_command.split()[2])

    def command(self):
        if self.current_command is None:
            raise RuntimeError("advance() must be called before reading a command")
        return self.current_command