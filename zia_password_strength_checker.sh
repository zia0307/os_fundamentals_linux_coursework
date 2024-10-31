echo "Enter a password"

read pw

count=0 

if [[ ${#pw} -ge 8 ]]; then
     count=$((count + 2))
fi

if [[ $pw =~ [A-Z] ]]; then
    count=$((count + 2))
fi

if [[ $pw =~ [a-z] ]]; then
	count=$((count + 2)) 
fi 

if [[ $pw =~ [0-9] ]]; then
    count=$((count + 2))
fi

if [[ $pw =~ [^a-zA-Z0-9] ]]; then
	count=$((count + 2))
fi

case $count in
	0) 
	echo "Invalid"
	;;
	2) 
	echo "Password strength is 2"
	;;
	4)
	echo "Password strength is 4" 
	;;
	6)
	echo "Password strength is 6"
	;;
	8)
	echo "Password strength is 8"
	;;
	10)
	echo "Password strength is 10"
	;;
esac 
	
