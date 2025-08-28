
# Class 2 Activities - The Lox Language

## Predicting Output

In each of the following Lox program files, predict what will be printed. Make a note of any interesting/unexpected features you notice, or things that you do not understand. After making your predictions on paper, run these files against the [reference Lox interpreter](https://github.com/munificent/craftinginterpreters), or [this online one](https://ajeetdsouza.github.io/loxcraft/).

### Sample 1
```
fun _(a, b) {
  if (a > b) return;
  print a;
  return _((a + 1) - 0, b - 0 + 0);
}
var O0O = 0;
var l0l = 5;
_((O0O + 1) * 1, l0l);
```

### Sample 2
```
class M {
  init(n) { this.n = n; }

  p() {

    fun f(i) {
      if (i > this.n) return;
      var s = "";

      fun g(j) {
        if (j > i) return;
        s = s + "meow ";
        g(j + 1);
      }

      g(1);
      print s;
      f(i + 1);
    }

    f(1);
  }

}

var x = M(5);
x.p();
```

### Sample 3
```
class A {
  speak() { return "meow"; }
}

class B < A {
  speak() { return 42; }
}

fun f(x) {
  if (x) return A(); else return B();
}

var o = f(""); // "" is falsey, so returns B
var p = f("cat"); // "cat" is truthy, so returns A

if (o.speak() == 42) print "B says number";
if (p.speak() == "meow") print "A says meow";

print A;
print B;
print f;
print o;
print f == 3;
```

## Identifying Syntax Errors

For each of the following 10 code snippets, identify which ones are syntax errors. For those that are valid Lox code, predict the output.

```
// 1.
var x = 5
print x;

// 2.
fun f(a, b) { return a + b; }
print f(2, 3); // 2. Valid

// 3.
if ((0 or 1) and (2 > 1) or ("cat" and 3 - 3 or 4)) 
    print nil and "yes" or 1 + 2 * 2 and 101 or 4 - 200 or 3 and 7; 
else print "no" or 300 and 1;

// 4.
var 1abc = 10;

// 5.
class Cat { speak() { print "meow"; } }

// 6.
print "hello" + 5;

// 7.
fun g( { print "oops"; }

// 8.
var y = ;

// 9.
print (3 + 4) * 2;

// 10.
return 42;
```

## Tool Setup

Make sure that your local machine is set up for Java and C development. You should be able to follow the instructions for the [reference Lox interpreter](https://github.com/munificent/craftinginterpreters) to build and run it.

