#!/bin/bash

cp -r /home/hamato/.config ~/dotfiles
cp -r /home/hamato/scripts ~/dotfiles
cp -r /home/hamato/.zshrc ~/dotfiles

cd ~/dotfiles
git add --all
git commit -m "Dotfiles Updated"
git push origin main
