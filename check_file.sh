
usage() {
	echo "You need to provide a filename as an argument"
	echo "Usage: $0 file_name"
	exit
}

is_file_exist()
{
	local file="$1"
	[[ -f "$file"  ]] && return 0 || return 1
}


[[ $# != 1 ]] && usage

if (is_file_exist "$1") 
then

	echo "file \"$1\" exist"
else
	echo "file \"$1\" doesnt exist"
fi
