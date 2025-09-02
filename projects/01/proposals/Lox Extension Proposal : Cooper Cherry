# PEP 001 : A proposed improvement for error handling
Author: Cooper Cherry
Date: 1-Sep-2025

## Abstract / Motivation
The Lox language has very limited error handling functionality, and what little is does is merely provide a line number at which an error occurs.
Many syntactically valid programs can hide subtle bugs (e.g., dangling else statements), which would lead to an unwanted output. This PEP proposes
extending the current error handling system into a a multi-faceted system that provides errors for invalid syntax, and warnings for ambiguous code assembly.

## Rationale
The introduction of this new method of handling errors, or potentially ambiguous structures would provide ease of use to those learning Lox, 
would decrease total time spent debugging, and as a result would increase productivitiy in programming.
There are a few relatively simple examples of syntactically valid programs that, due to the uniqueness of the Lox language,
will not produce what is likely asumed to be the correct output. Take, for example, a dangling else statement. 

```
var condition = true;

if (condition)
  if (false) print "First branch";
else
  print "Second branch";
```
With Lox, it is syntactically legal to omit the braces, and as a result, somebody new to the language or perhaps someone who is not familiar with the intricacies
would assume that the else statement is paired with the initial if condition due to the spacing, as we would see in Python.
However, this is not the case with Lox. The else statement is paired with the inner statement to try and solve dangling else ambiguity. 
If a user were to run the above program, there would be no erorr statement output but it also could potentially not produce the desired result. Hence, 
a potential warning that a new error handling system would output could be ```Warning: 'else' is attached to the nearest 'if' (line 3). Did you mean to use braces for the outer 'if'? ```

Further examples include using = in place of == which would produce two different outcomes while both being syntactically correct, unreachable return statements, and shadowed variables.
All of which will produce output without throwing errors, but alter the effect that the program enacts. 

## Syntax and Specification
No existing Lox syntax is modified. All previously syntactically valid programs remain as such. However, the semantics of error reporting are being extended to
distinguish between:

**Errors**
-The generated text output that is emitted when a program violates the Lox grammar
-Execution halts
-Error messages in this new system will provide more detail than the current system. 

**Warnings**
-Generated when user code is syntactically correct but could potentially be ambiguous and result in less than desired output.
-Execution does not halt
-Some example categories are listed in the rationale section.

## Examples
Example 1: Current Error Code Highlighting the ambiguity of advice in the current system. ![Example 1](https://drive.google.com/file/d/1u767pejDqbC4ZEiHGtdJT-zqd0BQKYcv/view?usp=sharing)
Example 2: ![An example of a potentially ambiguous control structure.](https://drive.google.com/file/d/1GDTz9nLYmbiDhxHoq35sFHCsdzC1xKTS/view?usp=sharing). This program's flow would be interpreted as 
```
if (true) {
  if (false) {
    print "inner";
  } else {
    print "outer"; // attaches here
  }
}
```
when it is possible that the user who wrote the program wanted the flow to be as below, but forgot curly brackets or assumed that indentation would pair if and else's together like other languages.
```
if (true) {
  if (false) print "inner"; 
} else {
  print "outer"; // attach here
}
```
