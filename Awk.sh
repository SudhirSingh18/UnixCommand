#############################################
https://itivitinet.itiviti.com/pages/viewpage.action?spaceKey=SUCCESS&title=Helpful+bash+commands+and+scripts
awk '{action}' your_file_name.txt
#######################################
When you want to search for text that has a specific pattern or you're looking for a specific word in the text, the command would look something like this:
- awk '/regex pattern/{action}' your_file_name.txt

################################################

awk '{
total = ($2 + $3 + $4)/3
if (total >= 50 && total< 60)
    print $1,$2,$3,$4, ": C"
else if (total >= 60 && total < 80)
    print $1,$2,$3,$4, ": B"
else if (total >= 80)
    print $1,$2,$3,$4, ": A" 
else 
    print $1,$2,$3,$4, ": FAIL" }'
```````````````````````	
awk '{avg=($2+$3+$4)/3; print $0, ":", (avg<50)?"FAIL":(avg<80)?"B":"A"}'
awk '{s=($2+$3+$4)/3;print $0," : ",(s>=80?"A":(s>=60?"B":(s>=50?"C":"FAIL")))}'
``````````````````
########################################################

Syntax:

awk '/search pattern1/ {Actions}
     /search pattern2/ {Actions}' file
####################################################

# Awk Example 4. Initialization and Final Action
Syntax: 

awk 'BEGIN { Actions}
{ACTION} # Action for everyline in a file
END { Actions }' file

#####################
awk 'ORS=NR%2?";":"\n"'

#######################
awk '{print $1,":", ($2<50||$3<50||$4<50) ? "Fail" : "Pass"}'

or

awk '{
  a[0]="Fail";
  a[1]="Pass";
  print $1, ":", a[$1>=50 && $2 >= 50 && $3 >= 50]
}'
