# add commit msg
acm () {
  undrscored="${1// /_}"
  touch $undrscored.txt
  echo \"$1\" >> ~/projects/home/streak/commit_files/$undrscored.txt
  cat ~/projects/home/streak/commit_files/$undrscored.txt
  echo
  echo "Commit message: '$1' added to commit_files/$undrscored.txt";
}



while read line; do echo "$line"; done < file.txt

while read line; do
  undrscored=${line// /_}
  some_quotes=`echo $undrscored | sed 's/"*//'`
  no_quotes=`echo $some_quotes | sed 's/"//'`
  echo $line >> ~/projects/home/streak/commit_files/$no_quotes.txt
done < commit_messages.txt
