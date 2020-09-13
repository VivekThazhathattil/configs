transi=$(date +%s)
let transi=transi*4
let start_char_idx=transi%25+1
let end_char_idx=start_char_idx+20
val1=$(ps aux | grep -oP -m1 '(?<=mpv ).+' | sed 's/Music\///g')
val1=$(echo "$val1")
#val=$(ps aux | grep -oP -m1 '(?<=mpv ).+' | sed 's/Music\///g' | cut -c$start_char_idx-$end_char_idx)
val=$(echo $val1 | cut -c$start_char_idx-$end_char_idx)
val_size=${#val1}
if test "$val" = ").+"; then echo ""; 
elif test "$val" = ""; then echo "";
elif test $val_size -lt 25; then echo " $val1 ";
else echo " $val ";
fi
