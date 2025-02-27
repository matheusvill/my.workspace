#!/bin/sh
set -o errexit
set -o nounset

GO_VERSION=1.6

echo "Install Go "$GO_VERSION" at "$GOROOT

cd /tmp
wget https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz
tar -xvf go$GO_VERSION.linux-amd64.tar.gz
mkdir -p $GOROOT
mv ./go/* $GOROOT
