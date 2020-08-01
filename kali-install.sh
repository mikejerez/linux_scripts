#!/bin/bash

# Kali Linux tool installation

sudo apt-get update

sudo apt install -y tmux gobuster dirbuster hydra net-tools exploitdb xrdp curl wget git steghide \
upzip ruby exiftool python3-pip httrack locate shellcheck tldr

sudo gem install zsteg

pip3 install stegoveritas && stegoveritas_install_deps

# update exploitdb
echo "Updating exploitdb"
searchsploit -u

# install metasploit
echo "Downloading metasploit"
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall 

echo "Installing metasploit"
chmod 755 msfinstall && ./msfinstall

# remove metasploit installation file
echo "Removing metasploit installation file"
rm msfinstall

# initialize msfdb
echo "Initializing metasploit database"
sudo msfdb init
