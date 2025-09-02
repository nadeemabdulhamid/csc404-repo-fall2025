# Lox Language Extension Proposal: Module System with Imports and Exports

## Motivation

Currently, Lox lacks a mechanism to connect and structure code across multiple files. As projects grow, this limitation forces developers into **monolithic source files**—large, single files that are hard to maintain and navigate.

Introducing a **module system** with `import` and `export` would enable developers to:

- Break programs into smaller, reusable components.
- Keep code organized and maintainable at scale.
- Reuse both user-written libraries and potential standard libraries.

---

## Rationale

A module system provides clear benefits for both developers and the language itself:

- **Encapsulation**: Modules expose only what is explicitly exported, keeping internal details private.
- **Reusability**: Common logic can live in shared modules and be imported wherever needed.
- **Extensibility**: Beyond user utilities, modules pave the way for integrating standard libraries (e.g., collections, math, or I/O).
- **Maintainability**: Splitting logic across multiple files reduces clutter and improves collaboration.

---

## Specification

### Syntax

#### Exporting

```
// math.lox
export fun add(a, b) { return a + b; }
export var PI = 3.14159;
```
- `export [fun|var] <name>` makes a function or variable publicly accessible.

#### Importing
// main.lox
import { add, PI } from "math.lox";
print add(PI, 2); ```
- `import { name1, name2 } from "filepath";` loads specific exported symbols.

#### Wildcard Import

`import * from "math.lox"; // brings in all exports`

-----------------------------------------------------------------------------------------------------------------------------------------------

### Semantics
**Resolution:** When interpreting, `import` evaluates the file path and loads that module.

**Execution:** The imported module is parsed and evaluated in its own scope.

**Caching:** A module registry ensures that each file is loaded only once, even if imported multiple times.

-----------------------------------------------------------------------------------------------------------------------------------------------

#### Error Handling
**File not found** → runtime error:
`Cannot load module: <path>`

**Non-exported symbol accessed** → compile-time or runtime error:
`<name> is not exported by module <module>`

-----------------------------------------------------------------------------------------------------------------------------------------------

### Examples
**Example 1: Simple Module**

math.lox
```
export fun square(x) { return x * x; }
export var E = 2.71828;
```

main.lox
```
import { square, E } from "math.lox";
print square(E); // ~7.389
```

-----------------------------------------------------------------------------------------------------------------------------------------------

**Example 2: Wildcard Import**

utils.lox
```
export fun greet(name) { print "Hello, " + name; }
export var version = "1.0";
```
app.lox
```
import * from "utils.lox";
greet("Lox User");
print version;
```

-----------------------------------------------------------------------------------------------------------------------------------------------

**Example 3: Circular Import**

a.lox
```
export var fromA = 1;
import { fromB } from "b.lox";
print "fromB is " + fromB;
```

b.lox
```
export var fromB = 2;
import { fromA } from "a.lox";
print "fromA is " + fromA;
```
