#
cp -r /root/.config/nvim/* /home/tn/my-vim-config/nvim/
cp -r /root/.config/lvim/* /home/tn/my-vim-config/lvim/

#
#cp -r lvim /root/.config/lvim
#cp -r nvim /root/.config/nvim

# install python and pip
#apt-get install software-properties-common
#add-apt-repository ppa:deadsnakes/ppa
#apt install python3-pip

# install nodejs and npm
#apt-get update
#apt-get install nodejs
#apt-get install npm

# install cargo
#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# install ripgrep
#apt-get install ripgrep

# install lazygit
#LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
#curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
#tar xf lazygit.tar.gz lazygit
#sudo install lazygit /usr/local/bin

# install LunarVim
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
