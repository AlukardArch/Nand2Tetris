import sys
from codeWritter import CodeWriter


def main():
    if len(sys.argv) < 2:
        print("Usage: python3 main.py <path_to_program.vm>")
        sys.exit(1)
    else:
        outputFilename = "test" + ".asm"
        with open(sys.argv[1], "r") as file:
            for line in file:  # itterate over each line
                # if line is a comment or line is empty then skip
                if line.startswith("//") or line == "":
                    continue
                asmCode = CodeWriter(line)
                with open(outputFilename, "a") as f:
                    for asm in asmCode:
                        f.write(asm + "\n")


main()
