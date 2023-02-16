from os import listdir, environ, popen, system
from os.path import isfile, join

BACKGROUNDS_PATH = f"{environ['HOME']}/Pictures/Desktop Wallpapers/Catppuccin/"

files = [file for file in listdir(BACKGROUNDS_PATH) if isfile(join(BACKGROUNDS_PATH, file))]

output_str = ""
 
for file in files:
    output_str += file + " "

choice = popen(f"echo -e {output_str} | rofi -dmenu -sep ' ' -p 'Select Wallpaper'").read()

if choice not in files:
    exit()

path = join(BACKGROUNDS_PATH, choice)


with open(f"{environ['HOME']}/.config/hypr/hyprpaper.conf", "a") as file:
    file.write(f"wallpaper = eDP-1, {path}")

system("killall hyprpaper")
system("hyprpaper &")
