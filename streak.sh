#!/bin/shell

echo '\n' >> ~/projects/home/context/README.txt


# create way to generate a generic matching commit for each message                 
# how about a separate little program for each of these in Python?
## they don't have to be Python, they just need to be text appended to a file
## that reflects generically the nature of the commit message


selected_file=`shuf -n1 -e *`

commit_message=`head -1`
commit_body=`sed -n '2,$p' $selected_file`
echo $commit_body > WIP.sh

(cd ~/projects/home/streak && git add ~/projects/home/streak/WIP.sh)
(cd ~/projects/home/streak && git commit -m "$commit_message")
(cd ~/projects/home/streak && git push origin master)
