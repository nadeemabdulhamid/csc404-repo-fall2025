# Lox Proposal - Trevor Childers

My proposal for a new feature to the Lox language is to add the support for arrays. In addition to supporting basic array declarations, I think we should also add the ability to index into an array and also assignment to an index.

## Why Arrays?

Arrays are a very useful tool for storing and manipulating collections of data. They can allow you to store multiple values into one variable. Arrays allow for the possibility to add an even more dynamic data structure, array lists. Storing data in a list like format helps make more sense of how the data is used and manipulated in code because a lot of times we as humans like to organize things in a list format like a to-do list or a shopping list. Having arrays would also allow using Lox's loop features a lot easier. Overall, adding array's to the Lox language makes it much more usable in real world programming and also gives the language potential to expand its usability even more through array lists.

## Specification 

When declaring a simple array as variable in Lox, the syntax would look very similar to the way they are implemented in Java. Arrays in Lox would be declared with the "var" keyword, followed by the variable name and the "=" symbol. Next, we would confine the array values with square brackets as is done in Java. The values themselves would be comma seperated and the line would end with semi-colon. A simple implementation could look something like this:

```Lox 
var array = [1,2,3,4];
```
While I will be using arrays that store integers in my examples, these arrays should be able to store any of Lox's data types as values.

When using an arrays indexing feature, the potential implementation in Lox would also mirror the Java implementation.

```Lox
print array[3]; 
```

Along with this, we should probably also have the ability to use indexing to assign new values into an array.

```Lox
array[1] = 24;
```

We could also include a length property for an array which would prove useful in methods that loop through an array.

```Lox
print array.length;
```

These features would be the very basic features of a Lox array, but there are also opportunities for more useful features. One of these potential features is creating array specific methods. 
Examples of this are basic push and pop methods that allow you to quickly add and remove values from the end of an array.

A push call would look something like this:

```Lox
array.push(10);
```

While a pop call could look like this:

```Lox
var current = array.pop();
```

This would remove and return the last element in the array.

## Example

One real world application that arrays give to the Lox language is scalability. Without arrays, the Lox language struggles when dealing with large data. Lets say an application you are creating needs to handle user profiles. If you want to store the usernames for each profile in the current implementation of Lox, then you would need to have individual variables for each username. This would be a pain to maintain and use. However, with an array you can store all of the usernames in one variable and then use that variable to manipulate and use the values.

So, instead of your code looking something like this:

```Lox
// usernames
var username_one = "tchilders";
var username_two = "ayard"
var username_three = "nstewart";
...
...
```

It can instead look something like this:

```Lox
// usernames
var usernames = ["tchilders", "ayard", "nstewart"];
```

This makes the code much more readable and easier to develop. Arrays also help your code be much more memory efficient. Instead of eating up memory with tons of variables you can use just one. Also, arrays allow you to implement sorting algorithms that could help manipulate and sort data. 

## Conclusion

Overall, adding arrays to the Lox language would be a big first step in moving the language towards real world use. Arrays allow the language to be much more usable. Memory efficiency is increased, scalability is increased, and algorithms can become much more complex and efficient. Arrays also create potential for more data structures to be implemented like array lists which can upgrade the language even more. Arrays are a necessary first step to making the Lox language usable in real world applications.
