# Linux Setup

## Software

Install Basics

```
sudo apt-get -y curl ansible zsh git vim
```

Install Bolt

```
wget https://apt.puppet.com/puppet6-release-bionic.deb
sudo dpkg -i puppet6-release-bionic.deb
sudo apt-get update
sudo apt-get install puppet-bolt
```

Install software

```
sudo snap install go --classic
sudo snap install code --classic
sudo snap install slack --classic
sudo snap install spotify --classic
sudo snap install microk8s --classic
sudo snap install kubectl --classic
sudo snap install task --classic
sudo snap install docker
sudo snap install lxd
sudo snap install etcd
sudo snap install chromium
sudo snap install terraform
sudo snap install http
sudo snap install conda --beta
```

```
- install 1password manually
- install zoom manually
```

---

## Shell Setup

```
ssh-keygen
```

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Install fonts: https://github.com/ryanoasis/nerd-fonts#font-installation

Colorschemes: https://mayccoll.github.io/Gogh/

bash -c  "$(wget -qO- https://git.io/vQgMr)" 

---

## Golang Setup

```
mkdir -p $GOPATH/bin
mkdir -p $GOPATH/src/github.com/github
```

## Keyboard

```
sudo apt-get install gnome-tweak-tool
```

Than, look for Tweak Tool > Typing > Alt/Win key behavior

And check: Ctrl is mapped to Win keys (and usual Ctrl keys)



## Vim Setup

```
apt-get install vim-nox
```

pathogen install

```
mkdir -p ~/.vim/bundle/ ~/.vim/autoload/ ~/.vim/colors/
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
touch ~/.vimrc
```

vimrc

```
execute pathogen#infect()
syntax on
filetype plugin indent on
```

Clone vim-go

```
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
```

Start vim and run `:GoInstallBinaries`

## VSCode Setup

```
code --install-extension ms-vscode.go
code --install-extension pkief.material-icon-theme
code --install-extension equinusocio.vsc-material-theme
code --install-extension whizkydee.material-palenight-theme
```

---

## Docker

```
sudo groupadd docker
sudo usermod -aG docker rossedman
```

## Kubernetes

```
microk8s.start
microk8s.kubelet get nodes
microk8s.kubelet enabl registry istio
```

## Pantheon

```
sudo add-apt-repository ppa:elementary-os/stable
sudo apt install elementary-desktop
```
