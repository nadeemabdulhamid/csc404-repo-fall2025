Lox Proposal

Main idea:
I propose the implementation of type specification similar to Java using the symbol ` to improve readability. 

“Lox is dynamically typed. Variables can store values of any type, and a single variable can even store values of different types at different times. If you try to perform an operation on values of the wrong type—say, dividing a number by a string—then the error is detected and reported at runtime.” -Nystrom, Robert Crafting Interpreters

Acknowledging Lox’s simplistic nature:
I am aware of the absence of types from lox and because of this, I also propose that this addition be purely optional. 

I recognise that the first argument for this choice would be to question its usefulness since comments exist:
Comments are only seen at the end of the line and the context of the topic may be confusing on the first read through.
Instant comprehension for what a function takes or what an object is.

Code example:

Consider the following Lox code: 
fun f(x) {
  if (x) 
return “Yes”; 
else return “No”;}

That “x” may be any type.

If I were to run: 
var o = f("");
print o;


I would receive “yes”.
If I were to write:
var o = f("");
var p = f(67);
var a = f(1738);
var s = f("Ay");
print o;
print p;
print a;
print s;
I would receive true for every single print. While this isn’t necessarily a bad thing, it is a bit problematic and can lead to confusion when reading code written by peers.

Here is an example of my new, optional syntax:
Fun `boolean f(x) {
  if (x) 
return “Yes”; 
else return “No”;}

Now it is clearer to the reader what the original programmer expected for this function's input, avoiding mistakes and misunderstanding. 
