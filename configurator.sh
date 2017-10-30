#install git if not installd
git --version 2>&1 >/dev/null # improvement by tripleee
GIT_IS_AVAILABLE=$?
if [ $GIT_IS_AVAILABLE -eq 1 ]; then
sudo apt-get install git;
fi
#go into HomeAssistant directory
cd /home/homeassistant/.homeassistant
#clone the configurator from github
sudo git clone https://github.com/danielperna84/hass-configurator.git
cd hass-configurator
#getting Configuration file
sudo wget -O https://raw.githubusercontent.com/Tech-Blog/Home-assistant/master/settings.conf settings.conf
#creting service file
sudo wget -O https://raw.githubusercontent.com/Tech-Blog/Home-assistant/master/configurator.service /lib/systemd/system/configurator.service
sudo chmod 644 /lib/systemd/system/configurator.service
sudo systemctl daemon-reload
sudo systemctl enable configurator.service
sudo systemctl start configurator.service
