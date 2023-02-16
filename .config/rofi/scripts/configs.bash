declare -a options=(
    "Hyprland"
    "Hyprpaper"
    "Waybar"
    "Swaylock"
    "Alacritty"
    "Rofi"
    "Wlogout"
)

choice=$(printf '%s\n' "${options[@]}" | rofi -dmenu -p "Select config: ")

case $choice in
    'Hyprland')
        alacritty --command nvim $HOME/.config/hypr/hyprland.conf
        ;;
    'Hyprpaper')
        alacritty --command nvim $HOME/.config/hypr/hyprpaper.conf
        ;;
    'Waybar')
        code $HOME/.config/waybar
        ;;
    'Swaylock')
        alacritty --command nvim $HOME/.config/swaylock/lock.sh
        ;;
    'Alacritty')
        alacritty --command nvim $HOME/.config/alacritty/alacritty.yml
        ;;
    'Rofi')
        alacritty --command nvim $HOME/.config/rofi/config.rasi
        ;;
    'Wlogout')
        code $HOME/.config/wlogout
        ;;
esac
