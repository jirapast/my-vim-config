# Go Lang installation
rm -rf /usr/local/go
tar -C /usr/local -xzf go1.22.1.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version

# cobra
go get -u github.com/spf13/cobra@latest
# import "github.com/spf13/cobra"
