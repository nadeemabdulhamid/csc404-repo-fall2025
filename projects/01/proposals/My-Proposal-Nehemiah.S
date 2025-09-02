Extension Project 1
My proposal: The statemnets break and continue should be added in Lox
As I played around with the online Loxcraft playground, I noticed Lox only supports basic for and while loops. Once you enter a loop, the only way out is by finishing all iterations or using return which also exits the whole function. This makes exiting early from a loop, skipping an iteration of a loop, and implementing searches, filters, or and early termination logic very choppy and time-consuming. Adding break and continue updates Lox’s control of the flow of a loop more advanced and more familiar to programmers from most other languages I know like Java and Python(Teaching myself), while being a very small change to the language. 
Rational
Loops will always be needed in any program and having them be able to freely be altered is a really big game changer. Adding break and contine will makes loops more flexible without introducing new complex concepts at a very minimal change to the syntax with straightforwad behavior. With these keywords loops are able to be shorter, clearer, and be able to match the expressiveness of a real programming problem. What’s so great about it to is that it is extremely commonly used in a lot of programming today so if implemented in, it wont go to waste.
Syntax
As simple as its always been. A “break;” and “continue;” is the most essential. 
Semantics
Break:
-	Should only be allowed inside a for or while loop
-	Immediately terminates the inner-most enclosing loop.
-	It should resume at the statement following that loop
-	It should raise a error if used outside of a loop
Continue:
-	Should only appear inside a for or while loop
-	Skips the rest of the current loop body.
-	For a while loop since it continues as long as a condition is met: the control should jump back to the loop condition check.
-	For a for loop since you know in advance how many times you want to execute the code: the control should jump to the increment step, then the condition.
-	Raises a error if used outside of a loop.
A simplistic and one-way control in the loops flow. They do not affect outer functions, return values, or other blocks.
