#!/bin/sh
globais

read -r -d '' ENV_VAR_MENU << EOM
  Menu ${BLUE}- ${BOLD}${RED}DNS${NORMAL}
EOM
createMenu "menuDns" "$ENV_VAR_MENU"
addMenuItem "menuDns" "Instalar" showInstalar
addMenuItem "menuDns" "Procurar" showProcurar

function showInstalar(){
	banner "DNS" "Dominios" "Instalar"

  sudo yum update
  sudo yum -y install git
  sudo yum -y install bind-utils
  sudo yum -y install telnet
  sudo yum -y install whois
  sudo yum -y install nc


#  git clone https://github.com/yousafkhamza/dns-lookup-bash-script
#  cd dns-lookup-bash-script
#  chmod +x dt.sh

  echo "alias dg='bash libs/dns.sh'" >> ~/.bashrc
  source ~/.bashrc

	reload "return" "menuDns"
	pause
}

function showProcurar(){
	banner "DNS" "Dominios" "Procurar"
  {
    titulo "Qual o dominio?"
    read -e -p "${MAGENTA}Procurar:${NORMAL} " -i "srv.encpro.pt" word
    echo -e "Procurou por $word"
	  source libs/dns.sh ${word}
	  esperar "sleep 1" "${WHITE}Terminado... "
  } 2>&1 | tee dns_$(date '+%Y-%m-%d').log
  echo -e ""
	reload "return" "menuDns"
	pause
}