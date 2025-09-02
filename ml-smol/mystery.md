# Mystery Languages

The [Mystery Language](https://cs.brown.edu/~sk/Publications/Papers/Published/pkf-teach-pl-exp-adv-think/) (ML) activities are intended to help you explore the design space of specific language features. In an ML assignment, you are given a new language feature’s syntax and a very loose description of it. The assignment will contain (say) three different languages that contain that new feature, each presented in terms of a black-box implementation of that language.

Each language will contain this new feature but will define it to behave in a somewhat different way. You will need to use the implementations to explore how the feature varies across the languages and try to pin down the differences precisely. You ultimately produce a *classifier*: a small set of programs that, collectively, tell the different implementations apart by producing different results under each implementation.

## Time

After two hours with no progress, please contact me and show me what you've tried so far. Chances are your exploration attempts aren't bearing fruit and you need redirection.

## Expectations

You need to classify most of the languages on most of the assignments. (This has not been a problem for students in the past.) You might not get all of them, but you need to get quite close.

## Software

The software is on [GitHub](https://github.com/shriram/mystery-languages#readme). The README provides installation instructions. Please also watch the [video](https://youtu.be/EogblZ1Rdpo) linked to the README to get a sense of the mechanics.

## Tasks

For each language family, the documentation of available constructs is in the repository’s README. Note that the video shows you how to work with the variants of the `strings` language.

Here is the list of language families for the whole semester. Check the Canvas page for start/due dates:

> The arithmetic language is a little tricky. Don’t get demoralized if you can’t figure it out entirely. (See [Expectations](#expectations) above.)

- arithmetic
- conditionals
- fun-calls
- mut-vars
- mut-structs
- fields
- eval-order

In the video, we end up with a small set of programs that can tell all the variants apart. This set is called a *classifier*. For each of the language families above, your task is to produce a classifier that distinguishes the variants, like in the video.

Observe that a given program in the classifier set may distinguish only one variant from all the others (just as in the video). When there are more than two variants, it is not always easy to produce a single program that can tell them all apart (i.e., produces a different answer in each variant); nor is it necessary. Sometimes a classifier is *much* clearer if each program distinguishes just one variant; then it has a clear purpose.

Therefore, don’t try to get overly clever. A classifier *does not* have to be the *minimal* set necessary to tell apart the variants. You can if you want for your personal satisfaction, but that doesn’t mean you have to turn that in! Or if you do, try to also include simpler, less ambitious programs as well. 

## Presentation

In class, a random couple of people will be asked to present your classifiers.
