
# Class 4 Activities - Scanning & Parsing


## Nested Comments

Nested comments like the following result in syntax errors in Java. Why would you want a language to support nested comments?

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


## Recursive Descent

Given the following portion of a grammar:

```
logic     → or ;
or        → and ( "or" and )* ;
and       → primary ( "and" primary )* ;
primary   → "true" | "false" | "(" logic ")" ;
```


### Code with Blank Snippets

Fill in the blanks:

```
Expr or() {
  Expr expr = ________________ ;

  while (match(___________)) {
    Token operator = previous();
    Expr right = ________________ ;
    expr = new Expr.Logical(expr, operator, right);
  }

  return expr;
}

Expr and() {
  Expr expr = ________________ ;

  while (match(AND)) {
    Token operator = previous();
    Expr right = ________________ ;
    expr = new Expr.Logical(expr, operator, right);
  }

  return expr;
}
```


## Parser Rule Abstraction

[Following the hint in the margin note](https://craftinginterpreters.com/parsing-expressions.html#:~:text=If%20you%20wanted%20to%20do%20some%20clever%20Java%208) here, abstract over the `equality()`, `expression()`, `term()`, and `factor()` methods.

