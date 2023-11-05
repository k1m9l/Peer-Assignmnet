function guess {

local count=$(ls . | wc -w)
local condition=1
local answ=0

while [[ $condition -eq 1 ]]
do
	echo "how many files are there in the current directory?"
	read answ
	if [[ $answ -eq $count ]]

		then condition=0
		echo "Correct"
	elif [[ $answ -lt $count ]]
		then
		echo "False. It is larger"
	else
		echo "False. It is less"
	fi
done

}

guess
