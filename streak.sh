#!/bin/shell

echo '\n' >> ~/projects/home/context/README.txt

commit_messages=("remove cruft" "add cruft" "add whitespace" \
                 "remove whitespace" "whitespace append" "delete comment" \
                 "bless this child" "add FIXME" "add TODO" \
                 "think about it" "make into module" "productionize" \
                 "fix typo" "make suggested change" "again" "soon" \
                 "good idea" "turn into function" "turn into class" \
                 "generate new instance" "add shebang" "notify next of kin" \
                 "clean up" "send email" "edit README" "remove import" \
                 "add import" "add comment" "update comment" "add return" \
                 "break apart function" "turn into array" "slice array" \
                 "ready for pull request" "add curl" "add css" \ 
                 "add js" "remove js" "modify js" "remove header" "add header" \
                 "change dependency" "refactor class" "refactor method" \
                 "refactor function" "refactor main" "split up long function" \
                 "uncomment" "wrap calls into function" "celebrate" \
                 "add newline" "remove newline" "modify regex" "add regex" \
                 "print variable" "add variable" "remove variable" \
                 "add debugger" "instantiate class" "indent" "refactor" \
                 "fix indent" "add counter" "remove counter" \
                 "fix counter" "print output" "remove print" \
                 "add while loop" "remove while loop" "add echo" \
                 "remove echo" "redirect output" "add assert" \
                 "remove assert" "test output" "test input" \
                 "validate" "address namespace concerns" \
                 "calculate runtime" "profile parent class" \
                 "catch exception" "parse output" "reindex array" \
                 "disconnect from Jenkins" "rewrite test" "done")

# create way to generate a generic matching commit for each message                 
# how about a separate little program for each of these in Python?
## they don't have to be Python, they just need to be text appended to a file
## that reflects generically the nature of the commit message


selected_file=${commit_messages[$RANDOM % ${#commit_messages[@]} ] }

commit_message=`head -1`
commit_body=`sed -n '2,$p' $selected_file`
echo $commit_body > WIP.sh

(cd ~/projects/home/streak && git add ~/projects/home/streak/WIP.sh)
(cd ~/projects/home/streak && git commit -m "$commit_message")
(cd ~/projects/home/streak && git push origin master)
