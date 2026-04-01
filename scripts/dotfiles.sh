#!/bin/zsh

echo "Dotfiles being updated"

cp -r /home/hamato/.config/cwal /home/hamato/dotfiles/.config/cwal
cp -r /home/hamato/.config/gtk-3.0 /home/hamato/dotfiles/.config
cp -r /home/hamato/.config/gtk-4.0 /home/hamato/dotfiles/.config
cp -r /home/hamato/.config/hellwal /home/hamato/dotfiles/.config
cp -r /home/hamato/.config/hypr /home/hamato/dotfiles/.config
cp -r /home/hamato/.config/kitty /home/hamato/dotfiles/.config
cp -r /home/hamato/.config/Kvantum /home/hamato/dotfiles/.config
cp -r /home/hamato/.config/mako /home/hamato/dotfiles/.config
cp -r /home/hamato/.config/mango /home/hamato/dotfiles/.config
cp -r /home/hamato/.config/matugen /home/hamato/dotfiles/.config
cp -r /home/hamato/.config/nvim /home/hamato/dotfiles/.config
cp -r /home/hamato/.config/qt5ct /home/hamato/dotfiles/.config
cp -r /home/hamato/.config/qt6ct /home/hamato/dotfiles/.config
cp -r /home/hamato/.config/rofi /home/hamato/dotfiles/.config
cp -r /home/hamato/.config/wal /home/hamato/dotfiles/.config
cp -r /home/hamato/.config/wallust /home/hamato/dotfiles/.config
cp -r /home/hamato/.config/waybar /home/hamato/dotfiles/.config
cp -r /home/hamato/.config/xdg-desktop-portal-termfilechooser /home/hamato/dotfiles/.config
cp -r /home/hamato/.config/yazi /home/hamato/dotfiles/.config
cp -r /home/hamato/.config/zathura /home/hamato/dotfiles/.config
cp -r /home/hamato/.config/btop ~/dotfiles/.config/
cp -r /home/hamato/.config/cava ~/dotfiles/.config
cp -r /home/hamato/.config/dolphinrc /home/hamato/dotfiles/.config
cp -r /home/hamato/.config/easyeffectsrc /home/hamato/dotfiles/.config
cp -r /home/hamato/.config/kdeglobals /home/hamato/dotfiles/.config
cp -r /home/hamato/scripts /home/hamato/dotfiles
cp -r /home/hamato/.zshrc /home/hamato/dotfiles

cd ~/dotfiles
git add .
git commit -m "Updated"
git push -u origin main
