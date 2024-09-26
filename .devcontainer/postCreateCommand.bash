#!/bin/bash
# ./devcontainer/postCreateCommand.bash
set -e

sudo wget https://github.com/mikefarah/yq/releases/download/v4.44.3/yq_linux_amd64 -O /usr/local/bin/yq
sudo chmod +x /usr/local/bin/yq
