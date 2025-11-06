
# Extension Project 8

## Instrumented Compilation and Execution

Add [instrumentation](https://en.wikipedia.org/wiki/Instrumentation_(computer_programming)) to the C compiler (start with chapter 22 code) to display not only the contents of the compiled chunk but all the other compiler and VM data structures.

- The constants array (chunk.h)
- The globals table (vm.h)
- The interned strings table
- The objects heap linked list (vm.h) (see Chapter 19, esp. 19.5)

Display the relevant data in the `interpret()` function (vm.c) after the `compile()` and after the `run()`.