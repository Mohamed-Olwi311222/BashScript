#!/bin/bash

echo "use 'source script.sh' or '. script.sh' to run this on ur current bash enviroment"

echo -e "Where do u want to go to? : \c"
read dir
if [ "$dir" == "DataStructures" ]; then

	echo -e "Which lang? \c"
	read lang
	
	if [ "$lang" == "C" ]; then
		cd "/mnt/d/Programming/Data Structures/Data-Structures-and-Algorithms/Data_Structures/CLang"
	elif [ "$lang" == "Cpp" ]; then
		cd "/mnt/d/Programming/Data Structures/Data-Structures-and-Algorithms/Data_Structures/Cpp"
	else
		echo "Lang not found"
	fi

elif [ "$dir" == "Algorithms" ]; then

	echo -e "Which lang? \c"
        read lang

	if [ "$lang" == "C" ]; then
                cd "/mnt/d/Programming/Data Structures/Data-Structures-and-Algorithms/Algorithms/CLang"
        elif [ "$lang" == "Cpp" ]; then
                cd "/mnt/d/Programming/Data Structures/Data-Structures-and-Algorithms/Algorithms/Cpp"
        else
                echo "Lang not found"
        fi

elif [ "$dir" == "Diploma" ]; then
	cd "/mnt/d/Programming/Diploma"

elif [ "$dir" == "ProblemSolving" ]; then

	echo -e "Which Website? \c"
	read website

	if [ "$website" == "LeetCode" ]; then

		echo -e "Which lang? \c"
		read lang

		if [ "$lang" == "C" ]; then
			cd "/mnt/d/Programming/ProblemSolving/LeetCode/C_lang"
		elif [ "$lang" == "Cpp" ]; then
			cd "/mnt/d/Programming/ProblemSolving/LeetCode/Cpp"
		elif [ "$lang" == "Python" ]; then
			cd "/mnt/d/Programming/ProblemSolving/LeetCode/Python"
		else
			echo "Lang not found"
		fi
	else
		echo "Website not found"
	fi
else 
	echo "Dir not found"
fi
