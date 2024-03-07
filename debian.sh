sudo apt-get update

sudo apt-get install git wget unzip curl tree zsh vim tmux

git clone https://github.com/jirapast/my-vim-config.git

cp my-vim-config/.zshrc $HOME/.zshrc
cp my-vim-config/.vimrc $HOME/.vimrc

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


### final step ###

source ~/.zshrc

sudo apt-get update
sudo apt-get upgrade

echo $PWD
echo $HOME
echo $SHELL
