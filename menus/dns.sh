#!/bin/sh
globais

read -r -d '' ENV_VAR_MENU << EOM
  Menu ${BLUE}- ${BOLD}${RED}DNS{NORMAL}
EOM
createMenu "menuDns" "$ENV_VAR_MENU"
addMenuItem "menuDns" "Instalar" showInstalar
addMenuItem "menuDns" "Configuracao" showProcurar



function showIniciar(){
	banner "DNS" "Configuracão" "Iniciar"

read -p "Qual o dominio: " word
echo "You entered $word"
	dg ${word}

	reload "return" "menuDns"
	pause
}

function showInstalar(){
	banner "DNS" "Configuracão" "Instalar"

  sudo yum update
  sudo yum -y install git
  sudo yum -y install bind-utils
  sudo yum -y install telnet
  sudo yum -y install whois
  sudo yum -y install nc


  git clone https://github.com/yousafkhamza/dns-lookup-bash-script
  cd dns-lookup-bash-script
  chmod +x dt.sh

  echo "alias dg='bash $(pwd)/dt.sh'" >> ~/.bashrc
  source ~/.bashrc

	reload "return" "menuDns"
	pause
}