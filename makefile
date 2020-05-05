all: README.md

README.md:
	touch README.md
	echo "# The Guessing Game" > README.md
	echo "### Status: " >> README.md
	echo "1. Date and Time of Run: **$$(date)**" >> README.md
	echo "2. Number of lines in *guessinggame.sh*: **$$(wc -l guessinggame.sh | grep -Po "\d+\b")**" >> README.md
	
clean:
	rm README.md

