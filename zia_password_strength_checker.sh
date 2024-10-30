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
	echo "Very Weak"
	;;
	4)
	echo "Weak"
	;;
	6)
	echo "Fair"
	;;
	8)
	echo "Strong" 
	;;
	10)
	echo "Excellent"
	;;
esac 
	
