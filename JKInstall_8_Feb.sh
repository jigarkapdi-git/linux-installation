#!/bin/bash

#Author: Jigar Kapdi
#Created Date : Jan 26, 2025
#Modified Date : Jan 27, 2025

#
#
#If you do not wish to install any particular software, just add a hash(#) in the beninning of the line, save this bash script file with CTRL+O, enter. Run the bash file.
#
#


#Softwares Installed : nala
sudo apt install nala git


#Softwares Installed : curl gufw, ufw, flatpak, neofetch, htop, atop, plocate, ncal, preload, gnome tweaks
sudo nala install snap curl gufw ufw flatpak neofetch htop plocate ncal preload gnome-tweaks


#Softwares Installed : gparted, synaptic, neofetch, htop
sudo nala install git gparted synaptic neofetch htop gdebi jp2a thunderbird 

sudo snap install freetube


#Softwares Installed : Brave browser
curl -fsSLO "https://dl.brave.com/install.sh{,.asc}" && gpg --keyserver hkps://keys.openpgp.org --recv-keys BF62821AFB16036A4ACABCCC87E072BD82960F4D && gpg --verify install.sh.asc
curl -fsS https://dl.brave.com/install.sh | sh

# Remove installation files created during Brave installation
rm ./install.sh ./install.sh.asc


#Softwares Installed : inkscape
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub org.inkscape.Inkscape


#Softwares Installed : konsole
sudo nala install konsole


#Description: mailutils, for being able to send emails from command line and bash scripts
sudo nala install mailutils


#Description: Ubuntu Restricted Extras are driver updates
sudo nala install ubuntu-restricted-extras -y


#Description: Thunderbird, mail client like MS Outlook
sudo nala install thunderbird

#
#
#Create a readme file with email id creation guideline with encrypted account details
#
#


#
#
#Description : Install Balena etcher, filezilla, shellcheck
#
#


#Softwares Installed : gimp
sudo nala install gimp


#Description: Remove firefox
sudo nala remove firefox

#
#
# Bring software icons on panel or Dash
#
# 


# Backup bash and profile files from root folder and home folder  to AllBash folder
find ~/ -name ".bash*" -exec cp {} $HOME/ActualBash/ \; && find ~/ -name ".profile" -exec cp {} $HOME/ActualBash \;

#Description: updatedb
sudo updatedb


#Description : sudo nala update && upgrade
sudo nala update && sudo nala upgrade -y


#Description : open gufw turn on firewall and exit
sudo gufw

#
#
# Intall Vagrant, Virtualbox, Virtualmachine, Docker, Windows - MTC, Video Editing software
#
#

#Description : As the entire system is ready after installation, let us create a snapshot with timeshift

#
#
# Change timeshift backup directory
#
#

sudo timeshift --create --comments $date(+%d-%b)_Full_Installed


# 
#
#Create cron job to create daily backups of the system.
#Create cron job to create weekly backups of the data.


exit 0

