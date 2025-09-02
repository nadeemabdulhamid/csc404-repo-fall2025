
# Class 3 Activities - Scanning & Syntax Trees

## Semicolon goofiness

Compare the behavior of these Javascript code snippets. What is going on?

```
function calculateSum(a, b) {
      return 
        a + b
    }
```

```
function calculateSum(a, b) {
      return a 
        + b
    }
```

## Grammars in the wild

Find the (official as possible) grammars for Python, Javascript, and Java. Where do semicolons appear? Are they optional or required?

## Reverse Engineering Scanning 

What line of Lox code would generate this list of tokens from the `Scanner`? Run your `Lox` interpreter based on Chapter 4/5 code to verify your answer.

```
FUN fun null
IDENTIFIER f null
LEFT_PAREN ( null
IDENTIFIER i null
RIGHT_PAREN ) null
LEFT_BRACE { null
IF if null
LEFT_PAREN ( null
IDENTIFIER i null
GREATER > null
THIS this null
DOT . null
IDENTIFIER n null
RIGHT_PAREN ) null
RETURN return null
NUMBER 42 42.0
SEMICOLON ; null
VAR var null
IDENTIFIER s null
EQUAL = null
STRING "" 
SEMICOLON ; null
RIGHT_BRACE } null
EOF  null
```

## AST Manipulation

- In the `main` method of the `AstPrinter.java` class, create an `Expr` object to represent the following expression:

      1 - (2 * - 3) < 4 == false

- Use the `AstPrinter` to print it out.

- Modify the `AstPrinter` code so that it prints operator expressions in *infix* instead of *prefix* notation, like this:

      (((1 - (2 * (- 3))) < 4) == false)

## Coding Visitors

Write a `CountMinus` class that `implements Expr.Visitor<Integer>` which counts the number of occurrences of a `-` (unary and binary) in an expression. Add a `main` method that applies the visitor to the same two expressions as the `AstPrinter` main method.


