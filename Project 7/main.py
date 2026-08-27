import sys
from pathlib import Path

from codeWritter import CodeWriter
from parser import Parser


def main():
    if len(sys.argv) < 2:
        print("Usage: python3 main.py <path_to_program.vm>")
        sys.exit(1)
    input_filename = sys.argv[1]
    output_filename = input_filename.rsplit(".", 1)[0] + ".asm"
    
    # create a Parser instance and a CodeWriter instance
    parser = Parser(input_filename)

    with open(output_filename, "w") as output_file:
        code_writer = CodeWriter(output_file)
        code_writer.set_file_name(Path(input_filename).stem)
        while parser.has_more_commands():
            parser.advance()
            code_writer.write_command(parser.command())


main()
