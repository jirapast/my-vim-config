# sudo apt-get update
# sudo apt-get install git 
# git clone https://github.com/jirapast/my-vim-config.git

#############################################################

sudo apt-get update
sudo apt-get install git 
sudo apt-get install unzip curl tree zsh vim tmux wget gh

cp .zshrc $HOME/.zshrc
cp .vimrc $HOME/.vimrc

chsh -s /bin/zsh

mkdir $HOME/bin
export PATH="$HOME/bin:$PATH"


### Oh My Posh ###
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d $HOME/bin
oh-my-posh font install
oh-my-posh get shell


### Vim ###

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
 
# After install the vim-plug, it is neccessary to command ":PlugInstall" in Vim to start initializing the Vim-plug  

mkdir $HOME/.vim/files
mkdir $HOME/.vim/files/backup
mkdir $HOME/.vim/files/info
mkdir $HOME/.vim/files/undo
mkdir $HOME/.vim/files/swap

### final step ###

source ~/.zshrc

sudo apt-get update
sudo apt-get upgrade

echo $PWD
echo $HOME
echo $SHELL
