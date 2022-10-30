https://www.thegeekstuff.com/2010/06/bash-array-tutorial/

#1. Declaring an Array and Assigning values
name[index]=value

#2. Initializing an array during declaration
Syntax:
declare -a arrayname=(element1 element2 element3)
declare -a Unix=('Debian' 'Red hat' 'Red hat' 'Suse' 'Fedora');

#3. Print the Whole Bash Array (@ or *)
echo ${Unix[@]}

#4. Length of the Bash Array
echo ${#Unix[@]} #Number of elements in the array
echo ${#Unix}  #Number of characters in the first element of the array.

#5. Length of the nth Element in an Array
${#arrayname[n]}
echo ${#Unix[3]} # length of the element located at index 3

#6. Extraction by offset and length for an array
Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
echo ${Unix[@]:3:2} # The following example shows the way to extract 2 elements starting from the position 3 from an array called Unix.
-> Suse Fedora

#7. Extraction with offset and length, for a particular element of an array
Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
echo ${Unix[2]:0:4}
-> Ubun

#8. Search and Replace in an array elements
Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
echo ${Unix[@]/Ubuntu/SCO Unix}

#9. Add an element to an existing Bash Array
Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
Unix=("${Unix[@]}" "AIX" "HP-UX")

#10. Remove an Element from an Array
Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
unset Unix[3]

#11. Remove Bash Array Elements using Patterns
#13. Concatenation of two Bash Arrays
Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
Shell=('bash' 'csh' 'jsh' 'rsh' 'ksh' 'rc' 'tcsh');
UnixShell=("${Unix[@]}" "${Shell[@]}")

#15. Load Content of a File into an Array
#Example file
$ cat logfile
Welcome
to
thegeekstuff
Linux
Unix
---------------------------------------------------
$ cat loadcontent.sh
#!/bin/bash
filecontent=( `cat "logfile" `)

for t in "${filecontent[@]}"
do
echo $t
done
echo "Read file content!"
------------------------------------------------------
$ ./loadcontent.sh
Welcome
to
thegeekstuff
Linux
Unix
Read file content!