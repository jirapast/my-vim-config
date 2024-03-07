# zoxide
# https://github.com/ajeetdsouza/zoxide?tab=readme-ov-file
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | zsh

#eval "$(zoxide init zsh)"
echo 'eval "$(zoxide init zsh)"' >> ~/.zshrc


# eza
# https://github.com/eza-community/eza
# https://nixos.org/download
# sh <(curl -L https://nixos.org/nix/install) --no-daemon

sudo apt update
sudo apt install -y gpg

sudo mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
sudo apt update
sudo apt install -y eza

eza -l