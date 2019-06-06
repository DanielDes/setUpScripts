#!/bin/bash

mkdir ~/backUp
#Bundle all hombrew dependencies
brew bundle dump
#Make copy of zshrc file
cat ~/.zshrc > ~/.zshrc_copy

#Move the backup file to the backUp directory
mv ./Brewfile ~/backUp
mv ~/.zshrc_copy ~/backUp

#Obtain the setUp script from the repository
curl https://raw.githubusercontent.com/DanielDes/setUpScripts/master/setUp.sh > ~/backUp/setUp.sh
chmod +x ~/backUp/setUp.sh
