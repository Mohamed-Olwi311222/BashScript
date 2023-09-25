#!/bin/bash
# Use source command or simply . script to run this
while true; do
echo -e "Where do you want to go to? : \c"
read dir

    dirfound=0

    case "$dir" in 
    "DataStructures" | "data*" | "datastructures" | "Da*" | "da*" | "Data*" )
        dirfound=1
        while true; do
			echo -e "Which lang? \c"
			read lang
            if [ "$lang" == "C" ]; then
                cd "/mnt/d/Programming/Data Structures/Data-Structures-and-Algorithms/Data_Structures/CLang"
                break
            elif [ "$lang" == "Cpp" ]; then
                cd "/mnt/d/Programming/Data Structures/Data-Structures-and-Algorithms/Data_Structures/Cpp"
                break
            else
                echo "Lang not found"
                continue
            fi
        done
        ;;
    esac

    if [ "$dirfound" == 1 ]; then
        break
    fi

    case "$dir" in
    "Algorithms" | "algorithms" | "Alg*" | "alg*" )
        dirfound=1
        while true; do
			echo -e "Which lang? \c"
			read lang
            if [ "$lang" == "C" ]; then
                cd "/mnt/d/Programming/Data Structures/Data-Structures-and-Algorithms/Algorithms/CLang"
                break
            elif [ "$lang" == "Cpp" ]; then
                cd "/mnt/d/Programming/Data Structures/Data-Structures-and-Algorithms/Algorithms/Cpp"
                break
            else
                echo "Lang not found"
                continue
            fi
        done
        ;;
    esac

    if [ "$dirfound" == 1 ]; then
        break
    fi

    case  "$dir" in
    "Diploma" | "diploma" | "Di*" | "di*" )
        dirfound=1
        cd "/mnt/d/Programming/Diploma"
        ;;
    esac

    if [ "$dirfound" == 1 ]; then
        break
    fi

    case  "$dir" in 
    "ProblemSolving" | "problemsolving" | "pr*" | "Pr*" | "problem*" | "Problem*" )
        dirfound=1
		while true; do
        echo -e "Which Website? \c"
        read website
        webfound=0
				case "$website" in 
				"LeetCode" | "leetcode" | "Le*" | "le*" | "leet*" | "Leet*")
					webfound=1
					while true; do
						echo -e "Which lang? \c"
						read lang
						if [ "$lang" == "C" ]; then
							cd "/mnt/d/Programming/ProblemSolving/LeetCode/C_lang"
							break
						elif [ "$lang" == "Cpp" ]; then
							cd "/mnt/d/Programming/ProblemSolving/LeetCode/Cpp"
							break
						elif [ "$lang" == "Python" ]; then
							cd "/mnt/d/Programming/ProblemSolving/LeetCode/Python"
							break
						else
							echo "Lang not found"
							continue
						fi
					done
					;;
				esac
				case "$website" in 
				"HackerRank" | "Hacker*" | "hacker*" | "Hack*" | "hack*" | "Ha*" | "ha*")
					webfound=1
					while true; do
						echo -e "Which lang? \c"
						read lang
						if [ "$lang" == "C" ]; then
							cd "/mnt/d/Programming/ProblemSolving/HackerRank/C_lang"
							break
						elif [ "$lang" == "Cpp" ]; then
							cd "/mnt/d/Programming/ProblemSolving/HackerRank/Cpp"
							break
						elif [ "$lang" == "Python" ]; then
							cd "/mnt/d/Programming/ProblemSolving/HackerRank/Python"
							break
						else
							echo "Lang not found"
							continue
						fi
					done
					;;
				esac
				if [ "$webfound" == 0 ]; then
					echo "Website not found"
					continue
				else
					break
        		fi
		done
        ;;
    esac
	if [ "$dirfound" == 0 ]; then
		echo "Dir not found"
	else
		break
	fi
done 

