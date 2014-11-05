# add commit msg
acm () {
  undrscored="${1// /_}"
  touch $undrscored.txt
  echo \"$1\" >> ~/projects/home/streak/commit_files/$undrscored.txt
  cat ~/projects/home/streak/commit_files/$undrscored.txt
  echo
  echo "Commit message: '$1' added to commit_files/$undrscored.txt";
}
