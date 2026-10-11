# 🐚 Shell Scripting — General Guide

A beginner-friendly introduction to Bash shell scripting.

---

## 📋 Table of Contents
- [What is Shell Scripting?](#what-is-shell-scripting)
- [Types of Shells](#types-of-shells)
- [Creating Your First Script](#creating-your-first-script)
- [Basic Commands](#basic-commands)
- [Variables](#variables)
- [User Input](#user-input)
- [Comments](#comments)
- [File Permissions](#file-permissions)
- [Useful Script Options](#useful-script-options)
- [Related Files](#related-files)

---

## What is Shell Scripting?

A **shell script** is a text file containing a series of commands that the shell (command-line interpreter) executes one by one. It helps automate repetitive tasks, manage files, and run system operations without manual effort.

**Why use shell scripts?**
- ✅ Automate repetitive tasks
- ✅ Schedule jobs (cron jobs)
- ✅ Manage servers and deployments
- ✅ Process files and data quickly

---

## Types of Shells

| Shell | Name              | Path          |
|-------|-------------------|---------------|
| `sh`  | Bourne Shell      | `/bin/sh`     |
| `bash`| Bourne Again Shell| `/bin/bash`   |
| `zsh` | Z Shell           | `/bin/zsh`    |
| `ksh` | Korn Shell        | `/bin/ksh`    |
| `csh` | C Shell           | `/bin/csh`    |

> **Most commonly used:** `bash` (default on most Linux/macOS systems)

---

## Creating Your First Script

### Step 1 — Create the file
```bash
touch myscript.sh
```

### Step 2 — Add the shebang line at the top
Every shell script starts with a **shebang** (`#!`) to tell the OS which interpreter to use.
```bash
#!/bin/bash
```

### Step 3 — Write your commands
```bash
#!/bin/bash

echo "Hello, World!"
echo "My first shell script!"
```

### Step 4 — Give execute permission
```bash
chmod +x myscript.sh
```

### Step 5 — Run the script
```bash
./myscript.sh
```

**Output:**
```
Hello, World!
My first shell script!
```

---

## Basic Commands

| Command        | Description                          | Example                        |
|----------------|--------------------------------------|--------------------------------|
| `echo`         | Print text to the terminal           | `echo "Hello"`                 |
| `ls`           | List files in a directory            | `ls -la`                       |
| `pwd`          | Print current working directory      | `pwd`                          |
| `cd`           | Change directory                     | `cd /home/user`                |
| `cp`           | Copy files or directories            | `cp file.txt backup.txt`       |
| `mv`           | Move or rename files                 | `mv old.txt new.txt`           |
| `rm`           | Remove files or directories          | `rm file.txt`                  |
| `mkdir`        | Create a new directory               | `mkdir myfolder`               |
| `cat`          | Display file contents                | `cat file.txt`                 |
| `grep`         | Search for a pattern in a file       | `grep "error" log.txt`         |
| `chmod`        | Change file permissions              | `chmod +x script.sh`           |
| `ps`           | Display running processes            | `ps -ef`                       |
| `df`           | Show disk space usage                | `df -h`                        |
| `curl`         | Fetch data from a URL                | `curl https://example.com`     |
| `wget`         | Download files from the web          | `wget https://example.com/file`|

---

## Variables

Variables store data that can be reused in the script.

### Declaring a Variable
```bash
#!/bin/bash

name="Yogesh"
age=25

echo "Name: $name"
echo "Age: $age"
```

**Output:**
```
Name: Yogesh
Age: 25
```

### Rules for Variables
- No spaces around `=` → ✅ `name="Yogesh"` | ❌ `name = "Yogesh"`
- Access variable with `$` → `$name`
- Always quote variables → `"$name"` to avoid errors

---

## User Input

Use the `read` command to take input from the user.

```bash
#!/bin/bash

echo "Enter your name:"
read name

echo "Hello, $name! Welcome to Shell Scripting."
```

**Output:**
```
Enter your name:
Yogesh
Hello, Yogesh! Welcome to Shell Scripting.
```

---

## Comments

Comments are lines ignored by the shell. Use them to explain your code.

```bash
#!/bin/bash

# This is a single-line comment
echo "This line runs"   # This is an inline comment

: '
This is a
multi-line comment block
'
echo "Done"
```

---

## File Permissions

Shell scripts need execute permission to run.

| Command           | Description                          |
|-------------------|--------------------------------------|
| `chmod +x file.sh`| Add execute permission               |
| `chmod 755 file.sh`| Owner can read/write/execute; others can read/execute |
| `ls -l file.sh`   | Check current permissions            |

### Permission Symbols

```
-rwxr-xr-x
 ↑↑↑ ↑↑↑ ↑↑↑
 │   │   └── Others: read + execute
 │   └─────── Group: read + execute
 └─────────── Owner: read + write + execute
```

---

## Useful Script Options

Add these at the top of your scripts for safer execution.

```bash
#!/bin/bash

set -e          # Exit immediately if any command fails
set -x          # Print each command before executing (debug mode)
set -o pipefail # Exit if any command in a pipeline fails
```

---

## Related Files

| File          | Description                                      |
|---------------|--------------------------------------------------|
| [`loops.md`](./loops.md)   | if/else statements and for loops with examples |
| [`yogesh.sh`](./yogesh.sh) | Sample shell script with commands              |

---

*Maintained by Yogesh Kumar*
