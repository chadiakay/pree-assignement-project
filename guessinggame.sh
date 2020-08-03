clear
echo "please guess the number of  files  in the current PWD?"

pwd

echo "Your answer: "
read answer


function filenumber {
	local number_of_file=$(ls -l | wc -l)-1
	echo $number_of_file
}

number_of_files_in_directory=$(filenumber)

while [[ $answer -ne $number_of_files_in_directory ]]
do

	if [[ $answer -gt $number_of_files_in_directory ]]
	then
		echo " please try again , your number of trying was too high .."
	else
		echo " please try again, your number of trying was too low .."
	fi
	echo ""
	echo "please try again: "
	read answer
done

echo " Congratulation, you got it right !!"
