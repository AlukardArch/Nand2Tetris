import sys


def main():
    if len(sys.argv) < 2:
        print("Usage: python3 main.py <path_to_program.vm>")
        sys.exit(1)
    else:
        VMcode = getProgram(sys.argv[1])
        for line in VMcode:  # itterate over each line
            # if line is a comment or line is empty then skip
            if line.startswith("//") or line == "":
                continue
            line = line.split()
        # to do:
        # codeWriter on the resulting array from line processed


def getProgram(filepath):
    with open(filepath) as f:
        fileContents = f.read()
        return fileContents


main()
