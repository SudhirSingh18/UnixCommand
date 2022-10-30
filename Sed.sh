https://www.grymoire.com/Unix/Sed.html#uh-10a

# sed ("stream editor") is a Unix utility that parses and transforms text, using a simple, compact programming language.
sed 's/regexp/replacement/g' inputFileName > outputFileName
# The s stands for substitute, while the g stands for global, which means that all matching occurrences in the line would be replaced

For example, sed -r "s/(cat|dog)s?/\1s/g" replaces all occurrences of "cat" or "dog" with "cats" or "dogs",
without duplicating an existing "s": (cat|dog) is the 1st (and only) saved sub-expression in the regexp, and \1 in the format string substitutes this into the output.

# Substitute the first occurrence of 'editor' with 'tool':
`$:~/hackerrank/bash/grep/grep1$` echo "My favorite programming editor is Emacs. Another editor I like is Vim." | sed -e s/editor/tool/
My favorite programming tool is Emacs. Another editor I like is Vim.

#Substitute all the occurrences of 'editor' with 'tool':
`$:~/hackerrank/bash/grep/grep1$` echo "My favorite programming editor is Emacs. Another editor I like is Vim." | sed -e s/editor/tool/g
My favorite programming tool is Emacs. Another tool I like is Vim.  

# Substitute the second occurrence of 'editor' with 'tool':
`$:~/hackerrank/bash/grep/grep1$` echo "My favorite programming editor is Emacs. Another editor I like is Vim." | sed -e s/editor/tool/2
My favorite programming editor is Emacs. Another tool I like is Vim.

# Highlight all the occurrences of 'editor' by wrapping them up in brace brackets:
`$:~/hackerrank/bash/grep/grep1$` echo "My favorite programming editor is Emacs. Another editor I like is Vim." | sed -e s/editor/{\&}/g
My favorite programming {editor} is Emacs. Another {editor} I like is Vim.

#For each line in a given input file, transform all the occurrences of the word 'thy' with 'your'.
#The search should be case insensitive, i.e. 'thy', 'Thy', 'tHy' etc. should be transformed to 'your'.
sed -e 's/thy/your/ig'

# replace start 12 digit of card with *
rev | sed 's/[0-9]/*/g5' | rev
sed -r -e 's/[0-9]{4}/****/1' -e 's/[0-9]{4}/****/1' -e ' s/[0-9]{4}/****/1' /dev/stdin

#reverse credit card number:
sed -r 's/(.... )(.... )(.... )(....)/\4 \3\2\1/'
sed -r 's/(.+ )(.+ )(.+ )(....)/\4 \3\2\1/'