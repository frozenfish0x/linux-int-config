#bash
packages=("nitrogen" "feh" "rofi" "polybar")

for pkg in "${packages[@]}";do
	echo "install pkg ....."
	sudo dnf install -y "$pkg"
	echo ""
done
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "$DIR"
cp -r  $DIR/../wallpaper/ ~/
cp  "$DIR"/../i3/config ~/.config/i3/config
mkdir -p ~/.config/polybar
cp /etc/polybar/config.ini ~/.config/polybar/
#~/.config/rofi/config.rasi
#~/.config/i3/config 

