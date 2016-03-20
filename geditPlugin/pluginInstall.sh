#!/bin/sh

echo "Updating"
sudo apt-get update
sudo apt-get upgrade

echo "Install Dependencies"
sudo apt-get install python3-pip
sudo apt-get install swig
sudo apt-get install portaudio-dev puthon-all-dev python3-all-dev
sudo pip3 install pyaudio
sudo pip3 install SpeechRecognition
sudo pip3 install pocketsphinx

echo "Making Directory"
sudo mkdir ~/.local/share/gedit/plugins/
sudo mkdir ~/.local/share/gedit/plugins/DicNator/
sudo mkdir ~/.local/share/gedit/plugins/DicNator/Logs/

echo "Moving Files"
cp pyDictator.plugin ~/.local/share/gedit/plugins/
cp pyDictator.py ~/.local/share/gedit/plugins/
cp DicNator/recogSpeech.py ~/.local/share/gedit/plugins/DicNator/
cp DicNator/setlog.py ~/.local/share/gedit/plugins/DicNator/
cp DicNator/statesMod.py ~/.local/share/gedit/plugins/DicNator/
cp DicNator/recogSpeechBG.py ~/.local/share/gedit/plugins/DicNator/
cp DicNator/DicNator_Icon.png ~/.local/share/gedit/plugins/DicNator/

echo "Finished"