#!/usr/bin/env bash
#Petit script pour installer les utilitaires
#zf170926.1031
echo ---------- install utils

sudo apt-get update
sudo apt-get install -y nano git
sudo apt-get install -y --reinstall bash-completion

#apt-get -y install xfce4 xdm


