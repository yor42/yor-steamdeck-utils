#Thank you to u/mvarns for initial guide! I just made it a bit more beginner friendly.

sudo steamos-readonly disable
# re-enable pacman
sudo pacman -S --noconfirm archlinux-keyring
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman-key --refresh-keys
sudo pacman -S --noconfirm --overwrite "*" base-devel git
cd /home/deck/
# we build yay and install it.
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
# Install android emulator genymotion
yay -Sy --noconfirm --overwrite "*" genymotion
sudo steamos-readonly enable
