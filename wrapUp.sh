#!/bin/bash

mkdir ~/backUp
#Bundle all hombrew dependencies
brew bundle dump
#Make copy of zshrc file
cat ~/.zshrc > ~/.zshrc_copy


mv ./Brewfile ~/backUp
mv ~/.zshrc_copy ~/backUp
