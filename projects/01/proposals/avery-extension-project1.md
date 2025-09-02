# Extension Project 1

<p>Author: Avery Jones</p>
<p>Created: 1-Sep-2025</p>
<p>Post-History: 1-Sep-2025</p>

## Task

<p>This project had us look into the features that we think are missing from the Lox programming language and find out how we could implement it into the program to make the program more useful. Once we found something that we found interesting to have, we then were tasked with researching more into the topic and creating a proposal for why our feature should be an addition to the Lox programming language.</p>

## Motivation 

<p>When I looked into the Lox programming language, I found that I was missing the <b>exception handling mechanism</b> that we use to help catch errors and prevent runtime errors that we can often run into. This is something that I've found helpful when trying to debug programs in the past especially in classes where the runtime of a program was a major part of the concepts being taught.</p>

<p>For example, when running the following code:</p>

``` print "hello" / 2; ```

<p>there would be a runtime mismatch error in Lox due to the attempt of an operation of different variable types. This within a bigger block of code could be hard to spot and could be have easily been fixable if we have something to help point out the error. With another example:</p>

``` 
function recursion(x) {
  print x;
  recursion(x+1);
}

recursion(x);
```

<p>there would be a stack overflow error because the function as it stands right now has no end and will go until the computer has no memory left to store all the data being used to run the program. In other programming languages, we could test the different parts of the function to see what runtime error was occuring and have it output a message that tells exactly what problem we are having and where.</p>

## Rational

<p>One way that I could see these exception handling mechanisms being implemented into the Lox language is to add similar logic to the try-catch logic that is used in many other programming languages.</p>

```
try {
  // whatever function or operation you want to check
} catch (e) {
  print "Error: " + e.message;
}
```

### Prevent Program Crashes

<p>Instead of the program running until it crashes, the try-catch blocks that and allows the user to run a program and have it be stopped before it can get to far into it.</p>

### Specify Where The Error Is Coming From And What The Error Is

<p>In larger programs it can be hard to spot where the errors are coming from and with the addition of a try-catch the programmer could pick out a single part that they want to check for the error and gain a more specific location for where the error is coming from. This makes it so the code is easier to read by seperating the possible error code from the main operation.</p>

<p>Also, instead of having the operation print out a generic error message, the message could be more specific to the situation and the operation that's being ran.</p>

## Specification of Syntax and Semantics

```
try {
}
```

<p>Firstly, with the try part of the new addition, it would include the operation that is trying to be checked.</p>

```
} catch (e) {
  print "Error: " + e.message;
}
```

<p>The second part of the function would be for the specific error that is being made. The "e" variable would represent the error class built-in to the programming language that would be programmed to check the operation in the try section and check for every error that could pop up. With try being connected to the error class, I would add a method in the class to get the last error message the operation ran into and have "e.message" print out that error.</p>

## Example

```
try {
  function recursion(x) {
    print x;
    recursion(x+1);
  }
  
  recursion(0);  
} catch (e) {
  print "Error: " + e.message;
}
```

<p>Result:</p>

```Error: Runtime Stack Overflow in recursion(x) function```
