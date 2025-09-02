Lox Proposal

Main idea:
I propose the implementation of type specification similar to Java using the symbol ` to improve readability. This type specification would be ignored by the the code and be treated as a type of comment.

“Lox is dynamically typed. Variables can store values of any type, and a single variable can even store values of different types at different times.” -Nystrom, Robert Crafting Interpreters

Acknowledging Lox’s simplistic nature:
I am aware of the absence of types from lox and because of this, I also propose that this addition be purely optional. 

I recognise that the first argument for this choice would be to question its usefulness since normal comments exist:
Comments are only seen at the end of the line and the context of the topic may be confusing on the first read through.
Instant comprehension for what a function takes or what an object is.

I recognise that the second argument for this choice would be to question why a normal comment notation couldn't be used:
I did not see a comment notation that worked like how I will describe with Lox. If there is one and I missed it, then my secondary proposal would be to introduce a new standard for writing functions to increase reliability for programmers. The comment could be a courtesy. The ' would simply be replaced with the already existing comment notation.

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

Fields in classes/ Local variables:
As a new standard, this comment would go before each field, similar to Java. 

Multiple parameters:
When a function in Lox takes multiple parameters, it would be standard to write each type in their respective orders with a space separating each one and a closing ' to signal that the type comment is over. 

For example:

fun 'boolean int int' guyThatCompares(true,1,2){
//Code
}

Please notice that only one ' would be needed when commenting for one parameter to avoid redundancy. There's no point in looking for another ' when white space could simple denote the end of the comment as well. The comment will check that there is a white space after each character up until the end of the line. If there are no other 's, the comment will be only on that single word.  However, if there is a second ', the comment will continue from the first to the second '.
