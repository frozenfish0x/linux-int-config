#bash
packages=("feh" "rofi" "polybar")
yes | sudo dnf install -y "${packages[@]}"

mkdir -p ~/.config/polybar
install /usr/share/polybar/config ~/.config/polybar
#~/.config/rofi/config.rasi
#~/.config/i3/config 

