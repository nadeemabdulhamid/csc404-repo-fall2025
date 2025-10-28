
# Extension Project 6

In addition to your code in your repository, you should write a `readme-project6.md` (Markdown) file that explain which option/s you worked on and what you did for each one. Summarize the main changes you made to the source code and how you tested them. How can someone else see/test the results of your work? Your readme should also contain any citations of sources, or credit/prompts used for generative AI.

In class, a random couple of people will be asked to present your work on each of these.

## Custom VM Instructions

Implement the following additional opcodes in the bytecode interpreter:

- `OP_MIN` / `OP_MAX`: Push the minimum or maximum of the top two values on the stack.
- `OP_INCREMENT` / `OP_DECREMENT`: Increment or decrement the top value on the stack.
- `OP_SWAP`: Swap the top two values on the stack.


## Optimizing stack ops

Complete Challenge 4 in Chapter 15. In addition to `OP_NEGATE`, you should optimize the `BINARY_OP`s.

Download the [complete official Lox repository](https://github.com/munificent/craftinginterpreters) and make your changes in the `c/vm.c` file. Run your experimental tests before and after your changes on some of the benchmarks in the test directory, e.g. `test/benchmarks/fib.lox`.

> ### My results
>
> Here are my experimental results on several (4) repeated runs - see if yours confirm these.
>
> #### Unmodified clox
> `% build/clox test/benchmark/fib.lox`
>
> 1.21416
> 1.20508
> 1.22075
> 1.23032
>
> #### Optimized OP_NEGATE and BINARY_OP
>
> 1.15067
> 1.15598
> 1.14634
> 1.15268
>
> These numbers seem to indicate a noticeable improvement with the optimization implemented.
>  
