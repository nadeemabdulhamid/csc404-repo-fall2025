# Lox Extension Proposal: `switch` Statement

## Summary
Add a `switch` statement to Lox for clear multi-branch control flow without `if/else` pyramids. No fallthrough by default; the first matching case runs and the `switch` ends.

## Motivation
Chaining `if`/`else` gets noisy and error-prone for multi-way choices. A `switch` aligns with common languages and improves readability for everyday control flow.

## Rationale
This proposal only needs scanner + grammar changes and a straightforward semantic rule. It fits well with what we’ve learned:
- **Chapter 4 (Scanning):** add tokens for `switch`, `case`, `default`.
- **Chapter 5 (Representing/Parsing):** add a statement form and parse it into an AST node.
- **Semantics:** can be defined by **rewriting into existing `if/else` code**, keeping the interpreter simple at this stage.

## Syntax
```lox
switch ( expression ) {
  case literal_or_expr: statement* ;
  case literal_or_expr: statement* ;
  ...
  default: statement* ;
}
```
Notes:
- `expression` is evaluated exactly once.
- Each `case` may use any expression (commonly a literal).
- `default` is optional and must be last if present.
- **No fallthrough**: the first match executes, then control exits the `switch` immediately.

## Semantics
When a `switch` runs:

1. Evaluate the expression inside the parentheses once and store it in a temporary variable.
2. Check each `case` from top to bottom:
   - If the case value equals the stored value (using Lox `==`), run that case’s statements and end the `switch`.
   - If no cases match and there is a `default`, run the `default` block.
   - If no cases match and there is no `default`, do nothing.

**Equivalent if/else expansion**
The following:
```lox
switch (grade) {
  case "A": print "Excellent!";
  case "B": print "Good job.";
  default:  print "Needs work.";
}
```
is equivalent to:
```lox
{
  var __sw = grade;
  if (__sw == "A") {
    print "Excellent!";
  } else if (__sw == "B") {
    print "Good job.";
  } else {
    print "Needs work.";
  }
}
```
This is why there’s no fallthrough: it behaves like a single `if / else if / else` chain, so only one branch runs.

## Examples

### Simple
```lox
var grade = "B";
switch (grade) {
  case "A": print "Excellent!";
  case "B": print "Good job.";
  case "C": print "Average.";
  default:  print "Needs work.";
}
// => Good job.
```

### Default
```lox
var grade = "D";
switch (grade) {
  case "A": print "Excellent!";
  case "B": print "Good job.";
  case "C": print "Average.";
  default:  print "Needs work.";
}
// => Needs work.
```

### No match, no default
```lox
switch (n) { case 1: print "one"; }
// If n != 1, do nothing and continue.
```

## Conclusion
The `switch` statement gives Lox a concise, readable way to handle multi-branch decisions. Because it rewrites cleanly into existing `if/else` code, it fits the Chapters 1–5 toolset (scanner + parser) without adding runtime complexity. It improves everyday code clarity while keeping the language minimal.
