# install zsh and use oh-my-zsh
sudo apt install zsh
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh; zsh

# change the shell for the future
chsh -s $(which zsh)

# change the shell now
zsh
