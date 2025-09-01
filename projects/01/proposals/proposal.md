# Built-in Array Support

## Abstract
This is a proposal for enabling support of arrays or lists, just like in python. In addition to list support, this proposal includes a standard for list initialization, management, and interaction within the language's existing syntax. 

## Rationale
Lists are one of the most basic and widely used data structure in programming. They enable developers to store and manipulate ordered collections of data. Without this feature, developers are forced to resort to create their own implementations of ways to store collections of data. 
Almost every programming language, from Java to Python supports lists as a core feature of the language. Having native support for lists allow for intuitive and clean syntax when working with collections.
Since Lox is a minimalist language that is dynamically typed, a list of objects can be declared using the characters `[]`, with no concern about the type of objects inside the list. 

Let us take a look on how this would benefit developers:

### 1. Simplicity
Examine this program that needs to store and manipulate a collection of user objects. 
Without a built-in list, a developer would need to create a list class and choose to organize how they want the objects to be stored, but with the list, the developer can simply write:
```
userA = User("A")
userB = User("B")
userC = User("C")
users = [userA, userB, userC]
```
and then easily iterate and perform other operations like sorting to the data:
```
sorted_asc = users.sort()  // sorts users in ascending order
sorted_desc = users.sort(true) // sorts in descending order
```
These operations would be a challenging task for each developer to create, and it would introduce more room for error and reduce code clarity. 

### 2. Extensibility
With native support for lists, developers can write custom functions that operate on lists like filtering elements or mapping over items. 


## Proposed Syntax
### Initialization
The syntax for initializing a list can be simple:
```
myList = [1, 2, 3, 4, 5]
```

### Access
To get a specific value from a list, lists should be zero-indexed:
```
myList[0]  // returns 1
```
Exceptions will be raised if the provided index is greater than the length of the list minus 1, or less than 0. 

### Adding and removing items
Since lists will be dynamic, functions like `append()`, `remove()` could be added to allow modification of lists:
```
myList.append(6)
myList.remove(3) // list is now [1, 2, 4, 5, 6]
```

### Sorting
A built in `sort()` method would allow for easy sorting of lists. If a user wants a descending order, they can put it in as a parameter:
```
sorted_asc = users.sort()  // sorts users in ascending order
sorted_desc = users.sort(true) // sorts in descending order
```

### Iteration
Iteration over a list should be simple, just like in Python:
```
for user in users {
  print "user.name";
}
```
