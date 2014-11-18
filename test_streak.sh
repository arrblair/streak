#!/bin/shell


if [ $# -eq 0 ]; then
  printf "\nMust pass in path to filename that you wish to test.\n\n"
  exit
fi

# just need to wire this so that it takes the selected file from the command line
selected_file=$1
#selected_file='commit_silos/whitespace_silo.txt'
echo $selected_file
commit_message=`head -1 commit_files/$selected_file`
echo $commit_message
# going to have to make a system so that commit bodies can come from different places
commit_body=`sed -n '2,$p' commit_files/$selected_file`
echo $commit_body

echo $commit_body > WIP.sh
cat WIP.sh

(cd ~/projects/home/streak && git add ~/projects/home/streak/WIP.sh)
(cd ~/projects/home/streak && git commit -m "$commit_message")
(cd ~/projects/home/streak && git push origin master)

# (TODO): should probably end by performing some kind of commit text maintenance
