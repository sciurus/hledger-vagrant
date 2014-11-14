#!/bin/sh

set -u
set -e

apt-get update
apt-get install -y hledger hledger-web

cat > /home/vagrant/.bash_aliases <<EOS
alias hledger="hledger -f /vagrant/hledger.journal"
EOS

cat > /etc/init/hledger-web.conf <<EOS
description     "hledger web interface"
start on filesystem or runlevel [2345]
stop on runlevel [!2345]
respawn
umask 022
chdir /vagrant
setuid vagrant
setgid vagrant
console log
exec hledger-web -f /vagrant/hledger.journal
EOS

start hledger-web
