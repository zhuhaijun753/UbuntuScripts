#!/bin/bash
echo "=========installing Chinese input source=========="
sudo add-apt-repository ppa:fcitx-team/nightly  
sudo apt update
sudo apt install fcitx
sudo apt -f install
sudo apt install fcitx-config-gtk 
sudo apt install im-switch
echo "=========installing googlepinyin input method=========="
sudo apt install fcitx-googlepinyin

echo "=========installing google-chrome-stable=========="
# some times this line con not get
#sudo wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/
#wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
#sudo apt update
#sudo apt install google-chrome-stable

echo "=========installing ssh and git=========="
sudo apt update
sudo apt install openssh-server
sudo apt install git
sudo apt install curl
sudo apt install axel
sudo apt install wget

echo "=========installing shadowsocks-qt5-Break Wall!=========="
sudo add-apt-repository ppa:hzwhuang/ss-qt5
sudo apt-get update
sudo apt-get install shadowsocks-qt5

echo "=========installing tweak tools and plank dock=========="
sudo apt install unity-tweak-tool
sudo apt install plank

# change pip source to tsinghua mirror
cd ~
mkdir .pip
cd .pip
wget https://github.com/jinfagang/UbuntuScripts/raw/master/confs/pip.conf
cd ..
sudo chmod -R 777 .pip
# install unity tweak tool
sudo apt install unity-tweak-tool
# set themes and tweak style like magic close window effect

# install plank
sudo apt install plank

## nemo file explorer
sudo add-apt-repository ppa:webupd8team/nemo
sudo apt-get update
sudo apt-get install nemo nemo-fileroller
gsettings set org.gnome.desktop.background show-desktop-icons false
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search

# install numix theme
sudo add-apt-repository ppa:numix/ppa  
sudo apt-get update 
sudo apt-get install numix-gtk-theme  
sudo apt-get install numix-icon-theme-circle  
sudo add-apt-repository ppa:noobslab/icons  
sudo apt-get update  
sudo apt-get install ultra-flat-icons

echo "=========setting up python3 library=========="
sudo apt update
sudo apt install python3-pip
sudo pip3 install --upgrade pip
sudo pip3 install scipy
sudo pip3 install matplotlib
sudo pip3 install pandas
sudo pip3 install keras
sudo pip3 install scikit-image

echo "============ installing Oracle Java8 =================="
sudo add-apt-repository ppa:webupd8team/java
sudo apt update; sudo apt install oracle-java8-installer

echo "============ update cmake to a high level 3.8 ========="
wget https://cmake.org/files/v3.8/cmake-3.8.2.tar.gz
tar -xvf cmake-3.8.2.tar.gz
cd cmake-3.8.2
./bootstrap
make -j8
sudo make install


echo "=========installing zsh-a beautiful terminal=========="
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "=========install imgcat================="
wget https://github.com/jinfagang/UbuntuScripts/raw/master/ShellRepo/imgcat
sudo mv imgcat /usr/local/bin/
echo 'alias imgcat="bash /usr/local/bin/imgcat"' >> ~/.zshrc
source ~/.zshrc

echo "All Done! Congratulations! Enjoy your Ubuntu!"
echo "Please manually reboot your system now!"
