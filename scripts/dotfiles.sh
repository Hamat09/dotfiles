#!/bin/zsh

cp -r /home/hamato/.config /home/hamato/dotfiles
cp -r /home/hamato/scripts /home/hamato/dotfiles
cp -r /home/hamato/Wallpapers /home/hamato/dotfiles
cp -r /home/hamato/.zshrc /home/hamato/dotfiles

cd ~/dotfiles
git add --all
git commit -m "Updated"
git push --set-upstream https://github.com/Hamat09/Hyperland-dots.git master
