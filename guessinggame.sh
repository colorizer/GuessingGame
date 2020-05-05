#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {

local file_count=$( ls -l | egrep "^\-" | wc -l )
local response=''

echo "How many files are here? Take a guess..."

while [[ $response -ne $file_count ]]; do
	read response
	if [[ $response -gt $file_count ]]; then
		echo "Nope.That guess was too high. Take another shot..."
	elif [[ $response -lt $file_count ]]; then
		echo "Nope.That guess was too low. Take another shot..."
	fi
done

echo "Great! You have eyes that see beyond this realm!"
}

guessinggame
