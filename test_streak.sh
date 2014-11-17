#!/bin/shell

# just need to wire this so that it takes the selected file from the command line
selected_file='commit_silos/whitespace_silo.txt'
commit_message=`head -1 commit_files/$selected_file`
commit_body=`sed -n '2,$p' commit_files/$selected_file`

echo $commit_body > WIP.sh

(cd ~/projects/home/streak && git add ~/projects/home/streak/WIP.sh)
(cd ~/projects/home/streak && git commit -m "$commit_message")
(cd ~/projects/home/streak && git push origin master)

# (TODO): should probably end by performing some kind of commit text maintenance
