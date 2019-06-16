#!/bin/bash

set -e

# install initial packages
if [ "$(uname -s)" = "Darwin" ]; then
	brew install ansible git
else
	apt-add-repository ppa:ansible/ansible
	apt update
	apt-get install -y ansible git vim
fi

ansible-pull -U https://github.com/rossedman/werkstation.git main.yml
