#! /bin/bash

set -e

# Install RTX (https://github.com/jdx/rtx)

install -dm 755 /etc/apt/keyrings

wget -qO - https://rtx.pub/gpg-key.pub | gpg --dearmor |  tee /etc/apt/keyrings/rtx-archive-keyring.gpg 1> /dev/null

echo "deb [signed-by=/etc/apt/keyrings/rtx-archive-keyring.gpg arch=amd64] https://rtx.pub/deb stable main" |  tee /etc/apt/sources.list.d/rtx.list

apt update
apt install -y rtx
