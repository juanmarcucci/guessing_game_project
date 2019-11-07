#!/usr/bin/env bash
# File: guessinggame.sh

files=$(ls | wc -l)

echo Hello! How many files do you think are in the current directory?

function guessinggame {
	while [[ true ]]
	do
	read varname
		if [[ varname -lt files ]]
		then 
			echo "Nope, too low. Try again"

		elif [[ varname -gt files ]]
		then
			echo "Nope, too high. Try again"

		elif [[ varname -eq files ]]
		then
			echo "Correct!"
			break
		fi
	done
}

guessinggame
