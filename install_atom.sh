#!/usr/bin/env bash
#Petit script pour installer l'éditeur Atom très facilement
#zf170926.1347
echo ---------- install Atom

sudo add-apt-repository -y ppa:webupd8team/atom
sudo apt-get update
sudo apt-get -y install atom

apm stars --user zuzu59 --install
