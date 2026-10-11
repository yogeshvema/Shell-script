# 🐚 Shell Scripting Guide

A beginner-friendly reference for writing Bash shell scripts.

---

## 📋 Table of Contents
- [Important Comparison Operators](#important-comparison-operators)
- [if / else Statement](#if--else-statement)
- [for Loop](#for-loop)

---

## Important Comparison Operators

These operators are used inside `[ ]` conditions in shell scripts.

| Operator | Meaning                  |
|----------|--------------------------|
| `-eq`    | Equal to                 |
| `-ne`    | Not equal to             |
| `-gt`    | Greater than             |
| `-lt`    | Less than                |
| `-ge`    | Greater than or equal to |
| `-le`    | Less than or equal to    |

> **Note:** For string comparison, use `=` (equal) and `!=` (not equal).

---

## if / else Statement

### Syntax

```bash
if [ condition ]; then
    # Commands if condition is true
elif [ another_condition ]; then
    # Commands if another condition is true
else
    # Commands if all conditions are false
fi
```

### Example 1 — Check if a number is positive, negative, or zero

```bash
#!/bin/bash

num=5

if [ "$num" -gt 0 ]; then
    echo "The number is Positive"
elif [ "$num" -lt 0 ]; then
    echo "The number is Negative"
else
    echo "The number is Zero"
fi
```

**Output:**
```
The number is Positive
```

---

### Example 2 — Check if a file exists

```bash
#!/bin/bash

file="/etc/passwd"

if [ -f "$file" ]; then
    echo "File exists: $file"
else
    echo "File does NOT exist."
fi
```

**Output:**
```
File exists: /etc/passwd
```

---

### Example 3 — Compare two numbers

```bash
#!/bin/bash

a=10
b=20

if [ "$a" -eq "$b" ]; then
    echo "a and b are Equal"
elif [ "$a" -gt "$b" ]; then
    echo "a is Greater than b"
else
    echo "a is Less than b"
fi
```

**Output:**
```
a is Less than b
```

---

### Example 4 — String comparison

```bash
#!/bin/bash

name="yogesh"

if [ "$name" = "yogesh" ]; then
    echo "Hello, Yogesh! Welcome."
else
    echo "You are not Yogesh."
fi
```

**Output:**
```
Hello, Yogesh! Welcome.
```

---

## for Loop

### Syntax

```bash
for variable in list; do
    # Commands to execute
done
```

### Example 1 — Loop through a list of items

```bash
#!/bin/bash

for fruit in apple banana mango orange; do
    echo "Fruit: $fruit"
done
```

**Output:**
```
Fruit: apple
Fruit: banana
Fruit: mango
Fruit: orange
```

---

### Example 2 — Loop through a range of numbers

```bash
#!/bin/bash

for i in {1..5}; do
    echo "Number: $i"
done
```

**Output:**
```
Number: 1
Number: 2
Number: 3
Number: 4
Number: 5
```

---

### Example 3 — C-style for loop

```bash
#!/bin/bash

for (( i=1; i<=5; i++ )); do
    echo "Count: $i"
done
```

**Output:**
```
Count: 1
Count: 2
Count: 3
Count: 4
Count: 5
```

---

### Example 4 — for loop with if/else inside (Combined)

```bash
#!/bin/bash

# Check each number from 1 to 10 and print if it's Even or Odd

for i in {1..10}; do
    if [ $((i % 2)) -eq 0 ]; then
        echo "$i is Even"
    else
        echo "$i is Odd"
    fi
done
```

**Output:**
```
1 is Odd
2 is Even
3 is Odd
4 is Even
5 is Odd
6 is Even
7 is Odd
8 is Even
9 is Odd
10 is Even
```

---

### Example 5 — Loop over files in a directory

```bash
#!/bin/bash

for file in /etc/*.conf; do
    echo "Config file found: $file"
done
```

---

## 💡 Quick Tips

- Always **quote your variables** (`"$var"`) to avoid word-splitting issues.
- Use `set -e` at the top of your script to exit on any error.
- Use `set -x` for debugging — it prints each command before executing it.
- `fi` closes an `if` block; `done` closes a `for` loop.

---

*Maintained by Yogesh Kumar*
