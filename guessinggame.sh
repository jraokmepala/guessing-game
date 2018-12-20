function analyze {
	echo $1
	echo $2
	if [[ $1 =~ $2 ]]
	then
		echo "You have guessed correctly!"
		bob=0
	elif [[ $1 -lt $2 ]]
	then
		echo "You guessed too low!"
	elif [[ $1 -gt $2 ]]
	then
		echo "You guessed too high!"
	else
		echo "Please enter a number next time."
	fi
}

bob=1
filenum=0
set "filenum=$(($filenum + (ls -l | wc -l)))"
#set "filenum=$(($filenum-1))"

while [[ $bob =~ 1 ]]
do
	echo "How many files do you think are in this directory?"
	read guess
	analyze $guess $filenum
done

echo "Congratulations! You guessed that there are $filenum files in this directory!"
