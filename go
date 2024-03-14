# Go Lang installation
sudo apt install wget
rm -rf /usr/local/go
wget https://go.dev/dl/go1.22.1.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.22.1.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version

go install github.com/rhysd/actionlint/cmd/actionlint@latest

# cobra
# go get -u github.com/spf13/cobra@latest
# import "github.com/spf13/cobra"


