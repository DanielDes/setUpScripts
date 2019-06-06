echo Setting Up Mac
# First update everything
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap Homebrew/bundle

#Time to install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Backup the zshrc file just in case
cat ~/.zshrc > ./.zshrc_current

#Restore the old zshrc
cat ~/.zshrc_copy > ./.zshrc

mkdir ~/setUpScripts

curl https://raw.githubusercontent.com/DanielDes/setUpScripts/master/wrapUp.sh > ~/setUpScripts/wrapUp.sh

#Generate ssh keys
 ssh-keygen -t rsa -b 4096
