#!/usr/bin/env bash
export PATH="$HOME/.local/bin:$PATH" #temporaire, setup_aw doit fonctionner pour etre remove
#export PATH="$HOME/project/venv_aw/bin:$PATH"
#export PATH="opt/activitywatch/venv_aw/bin:$PATH"
#export PATH="opt/activitywatch:$PATH"
#export PATH="root/.local/bin:$PATH"
echo "------------------------------------\------------------Installing pip------------------/------------------------------------"
sudo apt-get -y install python3-pip
sudo python3 -m pip install --user --upgrade pip
echo "------------------------------------\------------------Venv install------------------/------------------------------------"
sudo python3 -m pip install --user virtualenv
sudo apt-get -y install python3-venv
echo "------------------------------------\------------------Venv launch------------------/------------------------------------"
sudo python3 -m venv venv_aw
source ./venv_aw/bin/activate

echo "------------------------------------\------------------Installing dependencies------------------/------------------------------------"
sudo curl -sSL https://install.python-poetry.org |python3 - 
sudo apt -y install nodejs
sudo apt -y install npm
sudo apt -y install python3
#sudo apt -y install python
sudo apt -y install python-is-python3

echo "------------------------------------\------------------Installing poetry------------------/------------------------------------"
#sudo python3 -m pip install --user poetry


echo "------------------------------------\------------------Installation of ActivityWatch------------------/------------------------------------"

