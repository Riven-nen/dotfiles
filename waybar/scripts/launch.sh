killall waybar

if [[ $USER = "riven" ]]
then
  waybar  
else
  waybar &
fi
