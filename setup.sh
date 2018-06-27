sudo apt install python-pip
pip install --upgrade pip
pip install --user virtualenv
pip install --user virtualenvwrapper
# The commands above will install the Python Venv packages

export WORKON_HOME=~/Envs
mkdir -p $WORKON_HOME
source $HOME/.local/bin/virtualenvwrapper.sh
printf '\n%s\n%s\n%s' '# virtualenv' 'export WORKON_HOME=~/Envs' 'source $HOME/.local/bin/virtualenvwrapper.sh' >> ~/.bashrc
source ~/.bashrc
# We have now configured the user environment

mkvirtualenv --no-site-packages geonode
# Through this command we have created a brand new geonode Virual Environment

sudo useradd -m geonode
sudo usermod -a -G geonode geo
sudo chmod -Rf 775 /home/geonode/
sudo su - geo
