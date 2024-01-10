Welcome to Day 1 of the Bash Scripting Challenge! Today, we will cover the basics of bash scripting to get you started. Let's dive in:

## Task 1: Comments

In bash scripts, comments are used to add explanatory notes or disable certain lines of code. Your task is to create a bash script with comments explaining what the script does.

## Task 2: Echo

The `echo` command is used to display messages on the terminal. Your task is to create a bash script that uses `echo` to print a message of your choice.

## Task 3: Variables

Variables in bash are used to store data and can be referenced by their name. Your task is to create a bash script that declares variables and assigns values to them.

## Task 4: Using Variables

Now that you have declared variables, let's use them to perform a simple task. Create a bash script that takes two variables (numbers) as input and prints their sum using those variables.

## Task 5: Using Built-in Variables

Bash provides several built-in variables that hold useful information. Your task is to create a bash script that utilizes at least three different built-in variables to display relevant information.

## Task 6: Wildcards

Wildcards are special characters used to perform pattern matching when working with files. Your task is to create a bash script that utilizes wildcards to list all the files with a specific extension in a directory.

## Submission Instructions:

Create a single bash script that completes all the Tasks mentioned above. Add comments at appropriate places to explain what each part of the script does. Ensure that your script is well-documented and easy to understand.

To submit your entry, create a GitHub repository and commit your script to it.

Good luck with Day 1 of the Bash Scripting Challenge! Tomorrow, the difficulty will increase as we move on to more advanced concepts. Happy scripting!
#!/bin/bash

# First line of the script is the shebang which tells the system how to execute

# Task  2: Echo
echo "Scripting is fun with @TWS"

# Task  3: Variables
variable1="Hello"
variable2="Bash"

# Task  4: Using Variables
greeting="$variable1, $variable2!"
echo "$greeting Welcome to the world of Bash scripting!"

# Task  5: Using Built-in Variables
echo "My current bash path - $BASH"
echo "Bash version I am using - $BASH_VERSION"
echo "PID of bash I am running - $$"
echo "My home directory - $HOME"
echo "Where am I currently? - $PWD"
echo "My hostname - $HOSTNAME"

# Task  6: Wildcards
echo "Files with .txt extension in the current directory:"
ls *.txt



#Make sure to provide execution permission with the following command:
#chmod +x day1_script.sh
