README.md:
	touch README.md
	printf "The game of guessing \n" > README.md
	printf "This is file is created on " >> README.md
	date >> README.md
	printf "In this project, number of lines is " >> README.md
	wc -l guessinggame.sh | cut -d' ' -f1 >> README.md
