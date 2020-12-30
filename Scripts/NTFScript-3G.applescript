tell application "Terminal"
	activate
	do script "diskutil list" in window 1
	delay 2
	set theNTFS to the text returned of (display dialog "Enter the Identifier of Windows_NTFS Partition." default answer "")
	set MyPassword to the text returned of (display dialog "Type your password to allow NTFS-3G to make changes." default answer "" with hidden answer)
	do script "sudo diskutil unmount /dev/" & (theNTFS) & "" in window 1
	delay 0.5
	tell application "System Events"
		keystroke "" & (MyPassword) & ""
		delay 0.5
		keystroke return
		delay 0.5
	end tell
	set x to 1
	repeat
		tell application "Finder"
			set targetVolume to {"/Volumes/NTFS" & (x) & ""}
			if exists targetVolume then
				set x to x + 1
			else
				exit repeat
			end if
		end tell
	end repeat
	delay 0.5
	do script "sudo mkdir /Volumes/NTFS" & (x) & "" in window 1
	delay 0.5
	do script "sudo /usr/local/bin/ntfs-3g /dev/" & (theNTFS) & " /Volumes/NTFS" & (x) & " -o local -o allow_other -o auto_xattr -o auto_cache" in window 1
	delay 0.5
	display alert "NTFS Storage is mounted." buttons {"OK"} default button "OK"
	quit
end tell