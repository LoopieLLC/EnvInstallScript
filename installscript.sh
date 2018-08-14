#!/usr/bin/env bash

# refreshing the repositories
echo "upgrading and updating packages"
sudo apt-get update && sudo apt-get upgrade -y

echo "installing Python2.7 and Python3.5 and pip for both"
# installing python 2.7 and pip for it
sudo apt-get install python2.7 python-pip -y
# installing python-pip for 3.6
sudo apt-get install python3-pip -y

echo "installing atom text editor"
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom -y

echo "installing git"
sudo apt-get update
apt-get install git-core

echo "installing google chrome"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update
sudo apt-get install google-chrome-stable -y

echo "installing java"
sudo apt-get update
sudo apt-get install default-jre -y
sudo apt-get install default-jdk -y
javac -version

echo "installing npm and nodejs"
sudo apt-get update
sudo apt-get install nodejs -y
sudo apt-get install npm -y
npm -v
nodejs -v

echo "install ruby on rails"
sudo apt-get update
sudo apt-get update -y
sudo apt-get install curl -y
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
cd /tmp
cat /tmp/rvm.sh | bash -s stable --rails
curl -sSL https://get.rvm.io -o rvm.sh
source /home/osboxes/.rvm/scripts/rvm
rvm install ruby -y
rvm --default use ruby-2.5.1 -y
gem -v
gem install rails -v 4.2.7
gem update --system

echo "updating packages"
sudo apt-get update

echo "updating packages"
sudo apt-get update

echo "installing mysql"
sudo apt-get install mysql-server
mysql_secure_installation
mysqld --initialize

echo "updating packages"
sudo apt-get update

echo "installing MySQL workbench"
sudo apt install mysql-workbench -y

