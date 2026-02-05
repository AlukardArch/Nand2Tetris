import sys
from codeWritter import CodeWriter


def main():
    if len(sys.argv) < 2:
        print("Usage: python3 main.py <path_to_program.vm>")
        sys.exit(1)
    else:
        outputFilename = sys.argv[1]
        outputFilename = outputFilename.split("/")
        Filename = outputFilename[-1]
        Filename = Filename.split(".")
        out = Filename[0] + ".asm"
        # outputFilename = "test" + ".asm"
        with open(sys.argv[1], "r") as file:
            for line in file:  # itterate over each line
                if line.startswith("//"):
                    line = ""
                if line.strip():
                    # if line.startswith("//"):
                    # pass
                    asmCode = CodeWriter(line)
                    with open(out, "a") as f:
                        for asm in asmCode:
                            f.write(asm + "\n")


main()
