all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# Guessing Game Project" >> README.md
	echo "date and time make was run: `date`"  >> README.md
	echo " " >> README.md
	echo "number of lines of code contained in guessinggame.sh: `wc -l guessinggame.sh | egrep -o "[0-9]+"` " >> README.md

clean:
	rm README.md
