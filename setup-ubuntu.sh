#! /bin/sh
apt-get install python3-pip -y
pip3 install homeassistant
cd /etc/init.d
wget -O  https://raw.githubusercontent.com/Tech-Blog/Home-assistant/master/Hass-Startup-Script hass
sudo chmod a+x hass
sudo ./hass start
sudo ./hass stop
sudo update-rc.d hass defaults
