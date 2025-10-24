## How to create a custom command in linux

#### Step 1: Write your Script

Create a bash script named `greet.sh`

```bash
#!/bin/bash

# This script prints a greeting with a predefined name

name="John"
echo "Hello, $name! Welcome to your custom command."
```
#### Step 2: Make the Script Executable

```bash
chmod +x greet.sh
```

#### Step 3: Place the Script in Your PATH

Move the script to a directory in your PATH, ex: `~/bin`
if `~/bin` does'nt exist then:


```bash
mkdir -p ~/bin

## Move the `greet.sh` into bin folder
mv greet.sh ~/bin/
```
Make sure `~/bin` is in your PATH:

```bash
export PATH="$HOME/bin:$PATH"
```

Then reload your shell environment:

```bash
source ~/.bashrc
```
#### Step 4: Create an Alias for Simplicity

Edit your `~/.bashrc` and add the alias:

```bash
alias greet='greet.sh'
```
Reload the shell:

```bash
source ~/.bashrc
```
Now You can run your command:

```bash
greet
```
