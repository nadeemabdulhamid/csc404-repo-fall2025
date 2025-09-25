
# Extension Project 5

**Choose up to three** of these tasks to complete.

In addition to your code in your repository, you should write a `readme-project5.md` (Markdown) file that explain which option/s you worked on and what you did for each one. Summarize the main changes you made to the source code and how you tested them. How can someone else see/test the results of your work? Your readme should also contain any citations of sources, or credit/prompts used for generative AI.

In class, a random couple of people will be asked to present your work on each of these.

## Option 1 - Static Methods

[Challenge #1](https://craftinginterpreters.com/classes.html#challenges) in Chapter 12.

## Option 2 - Getters and Setters

[Challenge #2](https://craftinginterpreters.com/classes.html#challenges) in Chapter 12.

## Option 3 - Object Superclass

In Java, there is a special `Object` class that is the root of the class hierarchy - every class inherits from it, implicitly if not explicitly. Add this feature to Lox. The `Object` class in Lox should have a `toString()` and `equals()` methods. Try to define the `equals()` method to compare objects *structurally* (i.e. comparing their field values), rather than by identity (like how Java uses `==` by default).

## Option 4 - Lox Extension

[Challenge #3](https://craftinginterpreters.com/inheritance.html#challenges) in Chapter 13.

At the beginning of the semester, you were asked to propose a language extension to Lox. Pick your idea, or someone else's, and add it to the language now. Your extension should be something more than just adding a native method/class to the Lox "standard library" -- it might be that, but should also involve some modification of syntax (scanner/parser) and/or semantics (resolver/interpreter).

