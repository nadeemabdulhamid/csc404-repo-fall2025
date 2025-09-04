# Extension Project 1 Proposal: Add Arrays to Lox

## Motivation
Lox, from *Crafting Interpreters*, is a minimal programming language that is designed to teach the basics of compilers and interpreters. Its simplicity makes it great for teaching, but the lack of a built-in array type makes the language impractical for many real-world projects. When arrays or lists are not part of the language, programmers have to simulate collections with objects or repeated variables. Arrays are the core of many algorithms and data structures, and they allow programs to process data efficiently and flexibly. Adding them to Lox provides a more solid foundation for real-world programming. 

Arrays are consistently brought up as a feature that is missing from the language, and they would be essential to move Lox from a teaching language to a real, usable programming language ([Reddit, 2024](https://www.reddit.com/r/ProgrammingLanguages/comments/1arhgie/what_needs_to_be_added_to_loxfrom_crafting/)). The author of *Crafting Interpreters*, Bob Nystrom, has stated that arrays were not omitted from the language because they are unimportant, but because their implementation adds length and complexity to the book without teaching new concepts ([Nystrom, 2019](https://github.com/munificent/craftinginterpreters/issues/540)).

## Rationale
The absence of arrays limits what can realistically be built, especially for those who want to go beyond the examples from the book. Adding arrays to Lox is beneficial in both practicality and educational value:
- **Fundamental data structure:** Arrays are the building blocks of many other structures, like stacks, queues, and hash tables.
- **Versatility:** With arrays, programs can store and manipulate collections of items.
- **Realism:** Most modern programming languages (Python, Java, etc.) include arrays or lists as a core type. Lox feels incomplete without them.

## Choice of Array Model
This proposal focuses on adding dynamic arrays, similar to Python's lists or Java's ArrayList, rather than more traditional fixed arrays. Dynamic arrays are resizable collections that grow or shrink as needed. This choice is motivated by:
- **Ease of Use:** Beginners don't need to predict array size during creation.
- **Consistency:** Simple methods, like `.push()` and `.pop()`, only make sense with resizable arrays.
- **Power:** Dynamic arrays can be used like fixed arrays, but not vice versa.

## Tradeoffs and Efficiency Considerations
### Fixed Arrays:
- **Pros:** Predictable size, lower memory overhead, and strong performance. Gauranteed O(1) access/set operations.
- **Cons:** Inflexible and inconvinient for general use. Insertions or resizes require copying, which is O(n).
### Dynamic Arrays:
- **Pros:** Flexible, user-friendly, and more consistent with other modern languages. Lays better foundation for implementing other high level structures (like stacks/queues).
- **Cons:** Slightly more memory overhead as occasional resizing will be O(n).
While dynamic arrays have a higher memory cost, their flexibility and convinience makes them the right choice for Lox.

## Specification of Syntax and Semantics
### Syntax
```
var numbers = [1, 2, 3];
var empty = [];

print numbers[0]; 	// 1
numbers[0] = 33;
print numbers[0]; 	// 33
print numbers; 	    // [33, 2, 3]
```
### Semantics
- Indexing uses zero-based integers inside square brackets.
- Arrays are mutable objects that store an ordered collection of values.
- Printing an array shows its elements in list format.
- Arrays compare by reference equality, not value equality.
- Array literals evaluate to new array instances.

To preserve Lox’s flexibility and compact design, arrays would support a small set of native methods:
- `.push(value)` – append element to end of array.
- `.pop()` – remove and return last element.
- `.get(i)` – return element at index `i`.
- `.set(i, value)` – set element at index `i` to `value`.
- `.length` – property, returns length of array.
  
## Examples
Below are some examples of how arrays would be used in Lox:
```
// creating and accessing arrays
var fruits = ["apple", "banana", "cherry"];
print fruits[1]; 	// banana

// mutating arrays
fruits[0] = "blueberry";
fruits.push("peach");
print fruits; 	  // [blueberry, banana, cherry, peach]

// iterating over arrays
var numbers = [1, 2, 3, 4, 5];
var sum = 0;
for (var i = 0; i < numbers.length; i = i + 1) {
  sum = sum + numbers[i];
}
print sum; 	      // 15
```

## Conclusion
Adding dynamic arrays to Lox would not only be educational, but practical. It would help to bridge the gap between Lox as a teaching language and Lox as a usable programming tool. By using syntax similar to other languages, arrays keep the language simple while significantly increasing its expressive power and make Lox more like a “real” language.
