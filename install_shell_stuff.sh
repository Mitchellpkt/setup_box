# install zsh and use oh-my-zsh
sudo apt install zsh
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# install thefuck
sudo apt update
sudo apt install python3-dev python3-pip python3-setuptools
pip3 install thefuck --user

# alias
echo "eval $(thefuck --alias fuck)">>~/.zshrc
echo "eval $(thefuck --alias oops)">>~/.zshrc

# change the shell for the future
chsh -s $(which zsh)

# fresh shell for now
zsh
