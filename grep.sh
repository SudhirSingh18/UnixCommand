https://www.thegeekstuff.com/2009/03/15-practical-unix-grep-command-examples/

1. Search for the given string in a single file
Syntax:
grep "literal_string" filename

2. Checking for the given string in multiple files.
Syntax:
grep "string" FILE_PATTERN

3. Case insensitive search using grep -i
Syntax:
grep -i "string" FILE

4. Match regular expression in files
Syntax:
grep "REGEX" filename

5. Checking for full words, not for sub-strings using grep -w

6. Displaying lines before/after/around the match using grep -A, -B and -C
6.1 Display N lines after match
-A is the option which prints the specified N lines after the match as shown below.

6.2 Display N lines before match
-B is the option which prints the specified N lines before the match.

Syntax:
grep -B <N> "string" FILENAME


7. Highlighting the search using GREP_OPTIONS
$ export GREP_OPTIONS='--color=auto' GREP_COLOR='100;8'

8. Searching in all files recursively using grep -r


9. Invert match using grep -v


10. display the lines which does not matches all the given pattern.
Syntax:
grep -v -e "pattern" -e "pattern"

11. Counting the number of matches using grep -c
Syntax:
grep -c "pattern" filename

12. Display only the file names which matches the given pattern using grep -l

13. Show only the matched string


14. Show the position of match in the line
Syntax:
grep -o -b "pattern" file


15. Show line number while displaying the output using grep -n