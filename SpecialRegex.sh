grep '\([0-9]\) *\1'
-> Takes a digit ([0-9]), remembers it (\...\), looks for zero or more spaces ( *) followed by a repeat of the stored digit (\1).



# The caret (^) matches the beginning of the line.
# The dollar sign ($) matches the end of the line.
# The asterisk (*) matches zero or more occurrences of the previous character.
# The plus (+) matches one or more occurrence(s) of the previous character.
# The question mark (?) matches zero or one occurrence of the previous character.
# The dot (.) matches exactly one character. 