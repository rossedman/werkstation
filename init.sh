#!/bin/bash

set -e

REPO=${REPO:-https://github.com/rossedman/werkstation.git}
CLONE_DIR=${CLONE_DIR:-/home/"${SUDO_USER}"/src/werkstation}

# install initial packages
apt-get install -y ansible git

# clone this repo
mkdir -p "${CLONE_DIR}"
git clone --recursive "${REPO}" "${CLONE_DIR}"
chown -R ${SUDO_USER}.${SUDO_USER} ${CLONE_DIR}

ANSIBLE_NOCOWS=1 ansible-playbook -u ${SUDO_USER} -i "${CLONE_DIR}"/hosts "${CLONE_DIR}"/main.yml