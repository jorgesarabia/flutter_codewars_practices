#!/bin/sh

getBranch(){
	branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
	echo $branch
}

getIssue(){
	localbranch=$(getBranch)
	branchName=$(echo "$localbranch" | awk -F '/' '{print $2}')
	issueId=$(echo "$branchName" | awk -F '_' '{print $1}')
	echo "$issueId"
}

getMesage(){
	message="$1\n\nIssue: $2\nBranch: $3\n\nJorge Sarabia - jorge.sarabia@apoyomultiple.com"
	echo $message
}

formedMessage=$(getMesage "$1" "$(getIssue)" "$(getBranch)")
echo -e $formedMessage



# gitall "$(bash .vscode/testing.sh 'Message example')"  
