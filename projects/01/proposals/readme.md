# Lox Language Extension Proposals

# Pattern Matching in Lox 

**By:** Kamya Clinton 
**Date:** September 2, 2025

---

## 1. Why?
Lox is a simple programming language. Currently checking data can be long and messy with if-else statments. Pattern matching makes it easier to check data and run code based on its pattern. 

---

## 2. How?
Pattern matching looks at a value and compares it to a set of patterns. The first pattern that matches will run its code. '_' is a wildcard that matches anything. 

Example:
lox
match point {
{x: 0, y: 0} => print "Origin";
{x: 0, y: _} => print "Y-axis";
{x: _, y: 0} => print "X-axis"; 
_ => print "Somewhere else";
}

- If the point is {x:0, y:0}, it prints "Origin".
- If the point is on the Y-axis, it prints "Y-axis".
- _ handles everything else.

---
## 3. Conclusion 
Adding pattern matching makes Lox easier to use and helps make the code easier to reading. Helping programmers write less code while checking data. 
