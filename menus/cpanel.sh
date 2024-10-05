#!/bin/sh
globais

read -r -d '' ENV_VAR_MENU << EOM
  ${BLUE}Menu Cpanel - ${BOLD}${RED}Configuracão${NORMAL}
EOM
createMenu "menuCpanel" "$ENV_VAR_MENU"
addMenuItem "menuCpanel" "Um" showUm
addMenuItem "menuCpanel" "Dois" showDois

function showUm(){
	source config/submenus.sh
	sub-menu "menuCpanel"
  reload "return" "menuCpanel"
	pause
}

function showDois(){
	echo "sub"
	sleep 5
	clear
  source config/novo.sh
	pause
}