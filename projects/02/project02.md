
# Extension Project 2

**Choose up to three** of these tasks to complete. If you need help breaking them down further to get started, please let me know! It would help if you start on these early so that you can ask for feedback.

The best way to manage this, and other projects in this course, would be to maintain a repo with the code from the book as you work through each chapter. Then, for the extension projects, you should create a **branch** to work on the tasks, so that they don't interfere with the flow of the main development in the book. (If need be, you can merge changes into the main branch, in case you need to extend a project further for a later extension project.)

In class, a random couple of people will be asked to present your work on each of these.


## Option 1 - Comma Operator

[Challenge #1](https://craftinginterpreters.com/parsing-expressions.html#challenges) in Chapter 6.

Read more about the [comma operator](https://en.wikipedia.org/wiki/Comma_operator) and its uses here.


## Option 2 - Conditional Operator

[Challenge #2](https://craftinginterpreters.com/parsing-expressions.html#challenges) in Chapter 6.

Read more about the [ternary conditional operator in various languages](https://en.wikipedia.org/wiki/Ternary_conditional_operator) here.


## Option 3 - Block comments with Nesting

Add support to Lox’s scanner for Java/C-style `/* ... */` block comments. Make sure to handle newlines in them. Allow them to be nested. That is, the following should not result in a syntax error (unlike Java):

> ```
> ...
> /*   stuff ...
>     /* ...
>        more stuff
>        ...
>     */ 
>     ... more stuff ...
> */
> ```




## Option 4 : Type Inference

Develop a type inference system for the Lox expressions so far using the Visitor pattern. The goal is to traverse the AST and deduce the type of each expression node (e.g., number, string, boolean, etc.) in the absence of any explicit type annotations.
 
