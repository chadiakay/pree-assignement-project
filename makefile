all: README.md

README.md:
	echo "# Peer-graded Assignment: Bash, make, git and Github" > README.md
	echo "* This makefile was run at: $(shell date +%Y-%m-%d:%H:%M:%S)" >> README.md
	echo "* There were $(shell wc -l < guessinggame.sh) lines in guessinggame.sh" >> README.md

clean:
	rm README.md
