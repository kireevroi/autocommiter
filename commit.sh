#!/bin/bash
cd /root/autocommiter/
set -e
git config user.name "kireevroi"
git config user.email "kireevroi@gmail.com"
# loop randomly from 0 to 4
R=$(( $RANDOM % 5 ))
for (( i=0; i<$R; i++ )); do
		# get a random number between 0 and 4
		datetime=$(date +%s)
		echo $datetime >> commits.txt
		# add the file to the index
		git add commits.txt
		# commit the file
		git commit -m "commit $datetime"
		# push the file to the remote repository
		git push origin master
done
