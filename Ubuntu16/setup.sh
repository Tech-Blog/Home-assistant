echo "Checking for system updates"
sudo apt-get update
echo "Updating"
sudo apt-get upgrade -y

echo "Installing Reqired components and dependencies"
sudo apt-get install -y python3-pip
sudo apt-get --force-yes --yes install python-dev
sudo apt-get --force-yes --yes install python-pip
sudo apt-get --force-yes --yes install git
sudo apt-get --force-yes --yes install libssl-dev
sudo apt-get --force-yes --yes install libffi-dev
sudo apt-get --force-yes --yes remove apt-listchanges

sudo pip3 install --upgrade pip
sudo pip3 install --upgrade setuptools
sudo pip3 install pycrypto
sudo pip3 install cryptography
sudo pip3 install packaging
sudo pip3 install appdirs
sudo pip3 install six
sudo pip3 install fabric
sudo pip3 install flask_sqlalchemy
sudo pip3 install sqlalchemy

echo "Installing Home Assistant"
pip3 install homeassistant

#setting up auto start service
wget https://raw.githubusercontent.com/Tech-Blog/Home-assistant/master/Ubuntu16/hass.service -O /lib/systemd/system/hass.service
sudo chmod 644 /lib/systemd/system/hass.service
sudo systemctl daemon-reload
sudo systemctl enable hass.service
