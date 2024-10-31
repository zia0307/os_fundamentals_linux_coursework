#FILE MANAGER 
echo "Enter 1 for listing files, 2 for copying files, 3 for moving files, 4 for deleting files" 
read n 

case $n in 
	1) 
	
	ls -la | sort 
	;;
	
	2) 
	
	echo "Enter original directory"
	read ogd
	echo "Enter new directory"
	read newd 
	mkdir -p "$newd"
	cp -a "$ogd/"* "$newd/"
	echo "Files have been copied." 
	
	;;
	
	3) 
	
	echo "Enter original directory"
	read ogd
	echo "Enter new directory"
	read newd 
	mkdir -p "$newd" 
	for file in "$newd"/*; do
		if [[ -e "$newd"/"$file" ]]; then 
		echo $file"exists. Rewrite? y/n"
		read yesorno
			if [[$yesorno == "n"]]; then 
				continue 
			else 
				mv "$file" "$newd/"
			fi 
		fi 
	done 
	;;
	
	4) 
	echo "Enter directory where files are to be deleted"
	read dir1 
	for file in "$dir1"/*; do 
		[[ -e "$file" ]] || continue 
		[[ "$file" =~ ^\. ]] && continue

        	echo "Delete "$file"? (y/n): " 
        	read yesorno
        	
        	if [[ "$confirm" == "y" ]]; then 
        	rm -rf "$file" 
        	echo "$file deleted."
        	else 
        	continue 
        	fi
        done
    
    	echo "Deletion complete."
    	;;
    	
    	*) 
    	echo "Invalid input."
    	;;
		
esac
		
