#!/bin/bash

set -e

REPO=${REPO:-https://github.com/rossedman/werkstation.git}
VAULT_FILE=${VAULT_FILE:-~/.werkstation.yml}

# install initial packages
if [ "$(uname -s)" = "Darwin" ]; then
	brew install ansible git
else
	apt-add-repository ppa:ansible/ansible
	apt update
	apt-get install -y ansible git vim
fi

ansible-pull -U ${REPO} --vault-password-file ${VAULT_FILE} main.yml
