val=$(ps -e | grep $(xdotool getwindowpid $(xdotool getwindowfocus)) | grep -v grep | awk '{print $4}')
if test "$val" = ""; then echo " desktop ";
else echo " $val "; fi

