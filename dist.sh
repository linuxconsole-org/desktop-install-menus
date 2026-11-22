	find usr -type f | while read updatefile
	do
		echo "Send $updatefile"
		folder=$(dirname $updatefile)
		file=$(basename $updatefile)
		echo "cd $folder; lcd $folder; put $file" | ncftp desktop-install-menus  || break
	done
	echo "put desktop-install-menus.sh" | ncftp  desktop-install-menus
