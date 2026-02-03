import sys


def main():
    if len(sys.argv) < 2:
        print("Usage: python3 main.py <path_to_program.vm>")
        sys.exit(1)
    else:
        VMcode = getProgram(sys.argv[1])
        # to do:
        # parser to split each line into ints components
        # codeWriter on the results code from parser


def getProgram(filepath):
    with open(filepath) as f:
        fileContents = f.read()
        return fileContents


main()
