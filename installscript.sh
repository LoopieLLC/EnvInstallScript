#!/usr/bin/env bash

# refreshing the repositories
echo
echo "***upgrading and updating packages***"
echo
sudo apt-get update && sudo apt-get upgrade -y

echo
echo "***installing Python2.7 and Python3.5 and pip for both***"
echo
# installing python 2.7 and pip for it
sudo apt-get install python2.7 python-pip -y
# installing python-pip for 3.6
sudo apt-get install python3-pip -y

echo
echo "***installing atom text editor***"
echo
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install atom -y

echo
echo "***installing git***"
echo
sudo apt-get update
sudo apt-get install git-core

echo
echo "***installing google chrome***"
echo
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update
sudo apt-get install google-chrome-stable -y

echo
echo "***installing java***"
echo
sudo apt-get update
sudo apt-get install default-jre -y
sudo apt-get install default-jdk -y
javac -version

echo
echo "***installing npm and nodejs***"
echo
sudo apt-get update
sudo apt-get install nodejs -y
sudo apt-get install npm -y
npm -v
nodejs -v

echo
echo "***install ruby on rails***"
echo
sudo apt-get update
sudo apt-get install curl -y
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
cd /tmp
curl -sSL https://get.rvm.io -o rvm.sh
cat /tmp/rvm.sh | bash -s stable --rails
source /home/osboxes/.rvm/scripts/rvm
rvm install ruby
rvm --default use ruby-2.6.0
gem install rails -v 5.2.2
gem update --system

echo
echo "***installing mysql***"
echo
sudo apt-get update
sudo apt-get install mysql-server
sudo mysql_secure_installation
mysqld --initialize

echo
echo "***installing MySQL workbench***"
echo
sudo apt-get update
sudo apt install mysql-workbench -y

