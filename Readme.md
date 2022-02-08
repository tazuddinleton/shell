

# Shell Scripting Basics

## Basic CLI Commands
```
chmod (user) (group) (other) <file/directory>
```
### Linux permission scheme
```
0 = no permission
1 = x
2 = w
3 = x+w (1+2)
4 = r
5 = r+x (4+1)
6 = r+w (4+2)
7 = r+w+x (4+2+1)
```
### Simplified
```
r = 4
w = 2
x = 1
```
## Shell Basics
There are few types of shells available, the variant branches from the two main.
### Bourne Shells
1. Bourne Shell
2. Korn Shell
3. Borne Again Shell
4. POSIX Shell

### C Shells
1. C Shell
2. TENEX/TOPS C Shell
3. Z Shell

## Scripting
A shell script starts with `#!/bin/sh` which indicates the execution path of the script.
### Hello world
```
#!/bin/sh

# Author: Leton
# My first shell script
echo "Hello World!"

```
### Variables
You don't have to declare variables in order to use it. You have to assign like `var="value"` and no like `var = "value"`. Because if you give space between variable name and "=" shell will think variable name as a command instead of an identifier.

#### Variable assignment
`MY_SHELL="zsh"`
Do not use space before and after `=` sign.
#### Storing output of a commmand
`HOST_NAME=$(hostname)` or
```
HOST_NAME=`hostname`
````
#### Accessing the value of a variable
`echo $HOST_NAME`

### Tests
#### File operators
```
-d <file>       # returns true if file is a directory
-e <file>       # returns true if file exists
-f <file>       # returns true if file exists and is a regular file
-r <file>       # returns true if file is readable by you
-w <file>       # returns true if file is writable
-x <file>       # returns true if file is executable
```
#### String operators
```
-z <string>             # true if string is empty
-n <string>             # true if
<string>                # true if not empty
<string> = <string>     # true if equal
<string> != <string>    # true if not equal

```
Arithmetic operators
```
arg1 -eq arg2       # true if arg1 is equal to arg2
arg1 -ne arg2       # true if arg1 is not equal to arg2
arg1 -lt arg2       # true if arg1 is less than arg2
arg1 -le arg2       # true if arg1 is less than or equal to arg2
arg1 -gt arg2       # true if arg1 is greather than arg2
arg1 -ge arg2       # true if arg1 is greather than or equal to arg2

```
### The `IF` statement
```
if [ condition ]
then
    command
elif [ condition ]
then
    command
else
    command
fi

```

### Commands
#### readonly
readonly makes a variable unassignable later and `unset`able as well.
```
#!/bin/sh

# makes it read only variable
readonly Name="You name it"
# doesn't work
Name="Something else"
# doesn't work either
unset Name
```
### "." (dot) operator
Normally when we run shell script, it runs in a different instance.
In order to receive environment changes back to in our shell we must `source` the script. We can do this by two methods `. ./my_script.sh` or `source ./my_script.sh`.
### Wildcards

### Loops
