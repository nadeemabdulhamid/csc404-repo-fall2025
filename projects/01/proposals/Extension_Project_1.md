# Lox Proposal - Trevor Childers

My proposal for a new feature to the Lox language is to add the support for Arrays. In addition to supporting basic Array declarations, I think we should also add the ability to index into an array and also assignment to an index.

## Why Arrays?

Arrays are a very useful tool for storing and manipulating collections of data. They can allow you to store multiple values into one variable. Arrays allow for the possibility to add an even more dynamic data structure, Array Lists. Storing data in a list like format helps make more sense of how the data is used and manipulated in code because a lot of times we as humans like to organize things in a list format like a to-do list or a shopping list. Having arrays would also allow using Lox's loop features a lot easier. Overall, adding array's to the Lox language makes it much more usable in real world programming and also gives the language potential to expand its usability even more through array lists.

## Specification 

When declaring a simple array as variable in Lox, the syntax would look very similar to the way they are implemented in Java. Arrays in Lox would be declared with the "var" keyword, followed by the variable name and the "=" symbol. Next, we would confine the array values with square brackets as is done in Java. The values themselves would be comma seperated and the line would end with semi-colon. A simple implementation could look something like this: 

'''Lox 
var array = [1,2,3,4]