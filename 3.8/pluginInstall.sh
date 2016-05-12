#!/bin/sh

echo "Updating System"
sudo apt-get update
sudo apt-get upgrade

echo "Install Dependencies"
sudo apt-get install python-all-dev python3-all-dev
sudo apt-get install python3-pip
sudo apt-get install swig
sudo apt-get install portaudio19-dev
sudo pip3 install pyaudio
sudo pip3 install SpeechRecognition
sudo pip3 install pocketsphinx

echo "Making Directories"
sudo mkdir ~/.local/share/gedit/plugins/
sudo mkdir ~/.local/share/gedit/plugins/dictonator/

echo "Moving Files"
cp dictonator.plugin ~/.local/share/gedit/plugins/
cp ATTRIBUTES ~/.local/share/gedit/plugins/dictonator/
cp DEPENDENCIES ~/.local/share/gedit/plugins/dictonator/
cp LICENSE ~/.local/share/gedit/plugins/dictonator/
cp HOWTO ~/.local/share/gedit/plugins/dictonator/

echo "Moving Python Files"
cp dictonator/__init__.py ~/.local/share/gedit/plugins/dictonator/
cp dictonator/recogspeechbg.py ~/.local/share/gedit/plugins/dictonator/
cp dictonator/pluginactions.py ~/.local/share/gedit/plugins/dictonator/
cp dictonator/setlog.py ~/.local/share/gedit/plugins/dictonator/
cp dictonator/statesmod.py ~/.local/share/gedit/plugins/dictonator/
cp dictonator/saveasdialog.py ~/.local/share/gedit/plugins/dictonator/
cp dictonator/configurablesettings.py ~/.local/share/gedit/plugins/dictonator/


echo "Moving UI Files"
cp dictonator/bottomwidgetui.glade ~/.local/share/gedit/plugins/dictonator/
cp dictonator/configurationboxui.glade ~/.local/share/gedit/plugins/dictonator/

echo "Moving Icon"
sudo cp dictonator/dictonator.svg /usr/share/icons/hicolor/scalable/apps/
sudo gtk-update-icon-cache-3.0
echo "Finished"
