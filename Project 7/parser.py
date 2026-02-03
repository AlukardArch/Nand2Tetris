def Parser(VMCode):
    for line in VMCode:  # itterate over each line
        # Remove whitespaces and comments
        line = line.strip()

        # if line is a comment or line is empty then skip
        if line.startswith("//") or line == "":
            continue
