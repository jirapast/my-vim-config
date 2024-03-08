sudo apt-get update
sudo apt-get install git 
sudo apt-get install unzip curl tree zsh vim tmux wget gh

cp .zshrc $HOME/.zshrc
cp .vimrc $HOME/.vimrc

chsh -s $(which zsh)

# restart the system before continue on the next step
