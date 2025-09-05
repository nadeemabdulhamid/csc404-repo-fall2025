
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

<details>
<summary>Gen AI credits</summary>
 
*ChatGPT prompts [Accessed 9/4/25]:*
> What's a good classroom activity to use in conjunction with the "Parsing Expressions" (chapter 6) chapter of Crafting Interpreters?

> Provide a similar rule like "equality  → comparison ( ( "!=" | "==" ) comparison )*; " for a completely different grammar and a  recursive descent parser method with blanks to fill in snippets.
</details>



## Parser Rule Abstraction

[Following the hint in the margin note](https://craftinginterpreters.com/parsing-expressions.html#:~:text=If%20you%20wanted%20to%20do%20some%20clever%20Java%208) here, abstract over the `equality()`, `expression()`, `term()`, and `factor()` methods.

