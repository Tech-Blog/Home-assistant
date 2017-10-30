#! /bin/sh
apt-get install python3-pip
pip3 install homeassistant
wget -O  https://raw.githubusercontent.com/Tech-Blog/Home-assistant/master/Hass-Startup-Script /etc/init.d/hass
cd /etc/init.d folder
sudo chmod a+x hass
sudo ./hass start
sudo ./hass stop
sudo update-rc.d hass defaults
