style(){
red='\e[1;31m'
green='\e[1;32m'
blue='\e[1;34m'
purple='\e[1;35m'
cyan='\e[1;36m'
white='\e[1;37m'
yellow='\e[1;33m'

echo -e $red "╔╗────╔═╗╔╗───────────"
echo -e $red "╠╣╔═╦╗║═╣║╚╗╔═╗─╔╗─╔╗─"
echo -e $red "║║║║║║╠═║║╔╣║╬╚╗║╚╗║╚╗"
echo -e $red "╚╝╚╩═╝╚═╝╚═╝╚══╝╚═╝╚═╝"
echo -e $green ""
}

fix(){

echo '[!] Updating...'
apt-get update > install.log
echo
echo '[!] Installing Dependencies...'
echo '    Python3'
apt-get -y install python3 python3-pip &>> install.log
echo '    PHP'
apt-get -y install php &>> install.log
echo '    ssh'
apt-get -y install ssh &>> install.log
echo '    Requests'
pip3 install requests &>> install.log
echo '    Wget'
apt-get -y install  wget &>> install.log
echo '[!] Installed.'
}

style
fix
