#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
	
	git clone 'https://github.com/hypatia0422/boostrap-website.git'
	cp boostrap-website.git /var/www/html
	cat boostrap-website.git > index.html
	
	
	
fi

