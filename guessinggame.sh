#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {

local file_count=$( ls -A | wc -l )
local response=''

echo "How many files are here? Take a guess..."

while [[ $((10#$response)) != $file_count ]]; do
	read response
	if [[ $response =~ ^[0-9]+$ ]]; then
	if [[ $((10#$response)) -gt $file_count ]]; then
		echo "Nope.That guess was too high. Take another shot..."
	elif [[ $((10#$response)) -lt $file_count ]]; then
		echo "Nope.That guess was too low. Take another shot..."
	fi
	else
		echo "I don't understand. Speak in numbers I know"
		response=''
	fi
done

echo "Great! You have eyes that see beyond this realm!"
}

guessinggame
