# install python and pip
sudo apt-get install software-properties-common
# sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3-pip

echo "alias python=python3" >> ~/.zshrc
echo "alias pip=pip3" >> ~/.zshrc

source ~/.zshrc

python --version
python3 --version

pip --version
pip3 --version

sudo pacman -S --needed base-devel openssl zlib git curl
