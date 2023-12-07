## Anatomy of Variable Declaration
```COBOL
- **01 my-variable pic 9(5) usage comp-5 value 12345.**
  - **01:** Level number
  - **my-variable:** Data name
  - **pic 9(5):** Picture clause
  - **usage comp-5:** Usage clause
  - **value 12345:** Value clause
  - **.:** Termination of variable declaration

---

- Variables are defined in sections, declared using the "section" keyword.
- "Working-storage" variables are similar to instance variables.

## COBOL Name Conventions
1. Characters between 1-30
2. A-Z a-z 0-9 (-)
3. Include 1 alphabetic
4. Not start with -
5. Not use reserved keywords

## Picture Clause (Size/Type)
```COBOL
- **01 my-alphabetic pic A(5)**
- **01 my-alphanumeric pic X(5)**
- **01 my-numeric pic 9(5)**
- **01 my-numeric picture 9(5)**
- **01 my-numeric pic 9(5)**
- **01 my-numeric pic 99999**
```

Assume storing a bigger number for `pic 9(5)` (6 digits or more) will truncate the first element. For alphanumeric, it's the last elements that will be truncated (needs more testing). Storing a value less than the anticipated storage, e.g., 8 for `pic 9(5)`, will be stored as 00008.

- `V` represents a decimal point internally.
- An edited variable is required to represent a decimal point externally.

## Variable Levels
Variable levels represent the hierarchy of the data (example: 01, 05, 10...). Variables hold all variables beneath them with higher numbers until the next variable with a lower/equal number. Group level variables do not define picture clauses; they are used to group together elementary level variables. Using a numbering scheme that skips numbers is recommended, with multiples of five being a common convention.

Using Micro Focus, we can omit `ws-name` and instead use `#name` since `#` works as an escape character. A variable with the level number `78` defines constants; a picture clause doesn't have to be defined. We can create a custom type instead of reusing the same variable names in different levels. The `declare` statement allows you to declare variables in the procedure division. The use of the double colon notation to qualify variables within groups: instead of `move 12.0 to min of ws-length`, we can use `move 12.0 to my-bird::#length::min`.

We can use `of` or double colon notation to refer to elementary-level variables which have the same data name.

## Summary
- Variable definitions are made of the level number, the data name, and a picture, usage, and value clause.
- General-purpose variables are declared in the working-storage section.
- The `picture` clause is used to declare the size and type of a variable.

> Edited variables define how the data is displayed.
> Level numbers are used to group together related variables into a hierarchy.
> Data grouped this way will be stored sequentially in memory.
> Micro Focus COBOL allows us to:
> - Declare constants with level 78 variables
> - Declare custom types
> - Declare local variables
> - Use inline comments
> - Use the double-colon notation to qualify elementary-level variables in groups.
> - Use a hash `#` as an escape character for reserved words.
