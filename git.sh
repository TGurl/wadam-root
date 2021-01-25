#!/usr/bin/env bash

function banner() {
    term_cols=$(tput cols)
    str=":: $1 ::"
    for ((i=1; i<=$term_cols; i++)); do echo -n ‾; done
    tput setaf 10; printf "%*s\n" $(((${#str}+$term_cols)/2)) "$str"; tput sgr0
    for ((i=1; i<=$term_cols; i++)); do echo -n _; done
    printf "\n"
}

banner "Deleting the work folder if one exists."
[ -d work ] && sudo rm -rf work

banner "Deleting the out folder if one exists."
[ -d out ] && sudo rm -rf out

# checking if we have the latest files from github
#banner "Checking for newer files online first"
#git pull

# Below command will backup everything inside the project folder
banner "Backing up everything in project folder."
git add --all .

# Give a comment to the commit if you want
banner "Enter your commit message (optional)"
read input

banner "Committing to the local repository."
git commit -m "$input"

# Push the local files to github
banner "Pushing local files to Github."
#git push -u origin master
git push

banner "Git push completed...all done!"
