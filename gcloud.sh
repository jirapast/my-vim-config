#!/bin/zsh

curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-467.0.0-linux-x86_64.tar.gz

dir="$HOME/bin"
mkdir "$dir"

cp google-cloud-cli-467.0.0-linux-x86_64.tar.gz $HOME/bin/google-cloud-cli-467.0.0-linux-x86_64.tar.gz

cp $HOME/bin

tar -xf google-cloud-cli-467.0.0-linux-x86_64.tar.gz

./google-cloud-sdk/install.sh

./google-cloud-sdk/bin/gcloud init

gcloud -v
