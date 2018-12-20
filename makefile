README.md:
	echo "# The Guessing Game" > README.md
	echo "Updated at:" >> README.md
	date '+%m/%d/%Y %H:%M:%S' >> README.md
	wc -l guessinggame.sh >> README.md
