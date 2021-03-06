#!/bin/bash
chown jenkins:jenkins /var/lib/jenkins -Rf
curl --silent --location https://deb.nodesource.com/setup_4.x | sudo bash -
apt-get install --yes nodejs
apt-get install --yes build-essential
npm install -g grunt-cli
touch /code/.build-tool-set-up
apt-get install ruby-full
gem install sass
