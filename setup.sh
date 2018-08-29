sudo apt-get update && sudo apt-get install python-pip python3-dev --yes
sudo pip install --upgrade virtualenv
sudo adduser --system homeassistant
sudo addgroup homeassistant
sudo usermod -G dialout -a homeassistant
sudo mkdir /srv/homeassistant
sudo chown homeassistant:homeassistant /srv/homeassistant
sudo su -s /bin/bash homeassistant
virtualenv -p python3 /srv/homeassistant
source /srv/homeassistant/bin/activate
pip3 install --upgrade homeassistant
exit
sudo -u homeassistant -H /srv/homeassistant/bin/hass
