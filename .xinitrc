# Load .Xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# Simple dmenu prompt for sudo password when run with -A option
export SUDO_ASKPASS="$HOME/.scripts/dpass"

# Simple dmenu prompt for ssh-add password when run with -c option and keychain when run with --confirm option
export SSH_ASKPASS="$HOME/.scripts/dpass"

xset s off -dpms

setxkbmap hr
setxkbmap -option caps:swapescape

feh --bg-fill ~/config/theme/wallpaper/planet_beyond_clouds.jpg
# compton -CGb # Disable compton because of the flickering artefacts during screen capture with ffmpeg
unclutter &
dunst &
exec i3
# exec dwm
