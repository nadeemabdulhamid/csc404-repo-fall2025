# Cooper Cherry : Mystery Language Arithmetic
## Test Case(s)

```
(TEST (/ 3 2) 3/2 1.5 1)

```
## Thought Process

I tried a bunch of things that are quite simple and I will not bore you with. It got interesting however, when I tried to divide by zero. I remember 
hearing in class that a good way to break stuff is to divide by zero, and initially I was just trying to get an error code from a syntactically valid
line of code. These returned me three different answers, two of which were differing error codes, and one of which was +inf.0, which I understood to be a
point-float quantity. Taking this into account, I then tried to divide 2 by a really small decimal (1e-9), and this returned 

```
L1: 2000000000
L2: 1999999999.9999998
L3: 1999999999.9999998

```
And so I confirmed that Language 2 will always return a point float quantity (after a few more tests of course). I then tried dividing 3 by 2, and this is
where I believe I found the solution. The outputs I got were 
```
(/ 3 2)
L1: 3/2
L2: 1.5
L3: 1

```
and this made me think that Language 1 will always return a standard fraction. In some cases it merely put the two inputted numbers together in a fraction, while
other cases it returned a whole number, when it reduced nicely. 

The jury was still out on Language 3 though. I ran a few more test cases, and it appeared to be rounding down each time I asked for a quotient. As a (former) math major, I was inclined to believe that it was 
floor divison, but I tested some negative numbers to make sure it wasn't using truncation towards zero. After doing so, I think that language 3 is exhibiting semantic behavior 
of using truncation towards zero as its default division method. 

## Final Conclusions
L1 : Returns Standard Fractions or Whole Numbers

L2: Uses Float Point Division

L3 Uses Truncation Towards Zero Division
