# Intro to bash

The following terms are all used more or less interchangeably:

* Command Line Interface (CLI)
* Terminal
* Shell
  * Bash (Bourne-Again SHell)  <-- most popular
  * ksh, zsh, etc.
* REPL (Read Evaluate Print Loop)
  * This can refer to any interactive session, including python, etc.

To access `bash`, just open a Terminal app. By default, most Terminals are
configured to use `bash` by default, but recently MacOS switched to `zsh`. They
are both POSIX-compliant, so the differences are not all that important. You
can run `bash` inside of `zsh`, or vice versa.

## Navigation

* `pwd` (Present Working Directory) shows you your current location.
* `ls` (LiSt contents) shows the files and directories in the specified
  directory (default: current directory)
* `cd` (Change Directory) moves to the specified directory (default: home directory)
  * `.` refers to the current directory
  * `..` refers to the parent directory, so `cd ..` moves to the parent
    directory.
* `mkdir` (MaKe a DIRectory" creates a new directory.
* `rm` (ReMove) deletes files and directories (BEWARE: cannot be undone!)
  * to remove a directory, you must use the `-r` flag: `$ rm -r this_dir`

> Note that modern shells are great at autocompleting when you've already given
> enough information. For example, if there are two directories named `reynolds1`
> and `reynolds2` in
> the current directory, I can just type `cd rey` and then hit the <kbd>Tab</kbd>
> button, and `bash` will autocomplete `reynolds`, and then I just have to type
> `1` or `2`. Train yourself to use <kbd>Tab</kbd> often!

### Navigation practice

`cd` into your home directory and create a tree of directories that represents
your family tree. Start by making a directory with one of your grandparents'
names, then `cd` into that directory, and make a new directory for at least two
of their children. Continue until you feel comfortable navigating. 
Move around your file system using `pwd`, `ls`, and `cd` (and
[tab]!) until all of them are automatic.

## Redirecting `stdout` and `stderr`

* `>` redirects `stdout` to a file
  * `$ ls > directory_contents.txt`
* `2>` redirects `stderr` to a file
  * `$ rm file_that_does_not_exist.txt 2> error_msg.txt`
* `|` "pipes" the `stdout` from one process to the `stdin` of the next process
  * `$ ls | rev` pipes the output of `ls` into the input of `rev` (reverse)
* `2|` "pipes" the `stderr` from one process to the `stdin` of the next process
  * (Too rare to give a useful example)
* `echo` Send the specified string (followed by a newline) to `stdout`
  * `$ echo "hello world!"` (writes `hello world!` to the screen)
  * `$ echo "hello world!" > file1.txt`
* `cat` (conCATenate) Read the contents of file(s) to `stdout`
  * `$ cat file1.txt` (writes the contents of `file1.txt` to the terminal screen (`stdout`)
  * `$ cat file1.txt file2.txt file3.txt > all_files.txt`


When `pwd` and `ls` print to the screen, they are using a channel called
`stdout` (standard out). You can redirect a process' `stdout` to a file using
`>`.

### Redirecting practice

1. Make a file called `password.txt` that contains the string "Open sesame!"
1. Make a file called `name.txt` that has your name in it
1. Make a file called `this_dir.txt` that contains the path of the current directory.
1. Make a file called `all_three.txt` that combines the contents of the three previous files into one.
