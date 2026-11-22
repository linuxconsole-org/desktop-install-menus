	find usr -type f | while read file
	do
		echo "Send $file"
		echo "put $file" | ncftp  opkg
	done
