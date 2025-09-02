
# Lox Language Extension Proposal

## Motivation
_Crafting Interpreters_, and the language Lox, was built with the intention of delveloping understanding of scanners, parsers, compilers, and interpreters. Due to the educational focus, Lox restricts the implementation of features that could be considered a "black box" tool. This is done so the language behavior remains transparent and accessible to learners. Practically, this means that the Lox scanner does not support regular expressions (regex), as the author considers them a "black box" tool. Regular expressions are tools used for pattern matching and string processing in modern programming languages. Including regex support in Lox would expand the language's ability to handle text-based tasks, which are common in scripting, data transformation, and parsing applications. 

## Rationale
Adding regular expression support to Lox provides a way to handle string pattern matching and manipulation, which are common needs in many programming tasks. Regular expressions enable the scanner to perform concise and flexible operations such as searching, validating, and transforming strings. Incorporating regex into Lox would make the language more useful for real-world applications like data parsing and text analysis.

## Specification of Syntax and Semantics
### Syntax
``` REGEX_LITERAL := "/" expression "/" ```


### Semantics
- Regex literals produce regex objects, storing the pattern
- Expression can be used with the supported methods to match, split, and replace

Supported Methods:
- `.match(String)` - checks if the regex pattern is in any part of the given string
- `.split(String)` - breaks the given string into parts where the pattern appears
- `.replace(String, Replacement)` - using the regex, finds and replaces patterns with the given Replacement in the given string

## Examples
```
// Matching
var re = /cat/;
print re.match("The cat is here.");    // true
print re.match("No dogs here.");       // false

// Spliting
var re = /,/;
var parts = re.split("apple,banana,orange");
print parts;   // "apple" // "banana" // "orange"

// Replace
var re = /\d+/;
var result = re.replace("My number is 1234.", "#");
print result;   // "My number is #."

```
