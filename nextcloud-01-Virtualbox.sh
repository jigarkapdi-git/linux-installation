#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install virtualbox

vboxmanage -v | cut -dr -f1

sudo apt install virtualbox-ext-pack

vboxmanage list extpacks

groups $USER

sudo usermod -aG vboxusers $USER

echo "Virtualbox successfully installed. You can open the Virtualbox app from GUI"
