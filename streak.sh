#!/bin/shell

selected_file=`(cd commit_files/ && gshuf -n1 -e *)`
commit_message=`head -1 commit_files/$selected_file`
commit_body=`sed -n '2,$p' commit_files/$selected_file`

echo $commit_body > WIP.sh

(cd ~/projects/home/streak && git add ~/projects/home/streak/WIP.sh)
(cd ~/projects/home/streak && git commit -m "$commit_message")
(cd ~/projects/home/streak && git push origin master)
