#!/bin/bash

set -e

REPO=${REPO:-https://github.com/rossedman/werkstation.git}

# install initial packages
if [ "$(uname -s)" = "Darwin" ]; then
	brew install ansible git
else
	apt-add-repository ppa:ansible/ansible
	apt update
	apt-get install -y ansible git vim
fi

ansible-pull -U ${REPO} main.yml
