# String-Operations-Language-Parser

The language supports concatenation (+) and "reverse" operators over strings, function definitions and calls, conditionals (if-else i.e, every "if" must be followed by an "else"), and the following logical expression:

is-prefix-of (string1 prefix string2): Whether string1 is a prefix of string2.
All values in the language are strings.

The precedence of the operator expressions is defined as: precedence(if) < precedence(concat) < precedence(reverse).

The parser translates the input language into Java. It uses JavaCUP for the generation of the parser combined with Jflex generated lexer.

We assume that the program input will always be semantically correct. The input language the function declarations must precede all statements.

Input examples:

Example 1

    name()  {
        "John"
    }

    surname() {
        "Doe"
    }

    fullname(first_name, sep, last_name) {
        first_name + sep + last_name
    }

    name()
    surname()
    fullname(name(), " ", surname())



Example 2

    name() {
        "John"
    }

    repeat(x) {
        x + x
    }

    cond_repeat(c, x) {
        if (c prefix "yes")
            if("yes" prefix c)
                repeat(x)
            else
                x
        else
            x
    }

    cond_repeat("yes", name())
    cond_repeat("no", "Jane")


Example 3

    findLangType(langName) {
        if ("Java" prefix langName)
            if(langName prefix "Java")
                "Static"
            else
                if(reverse "script" prefix reverse langName)
                    "Dynamic"
                else
                    "Unknown"
        else
            if (reverse "script" prefix reverse langName)
                "Probably Dynamic"
            else
                "Unknown"
    }

    findLangType("Java")
    findLangType("Javascript")
    findLangType("Typescript")