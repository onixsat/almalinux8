#!/bin/sh
globais

read -r -d '' ENV_VAR_MENU << EOM
  ${BLUE}Menu Cpanel - ${BOLD}${RED}Configuracão${NORMAL}
EOM
createMenu "menuCpanel" "$ENV_VAR_MENU"
addMenuItem "menuCpanel" "Sub Menu" showSubmenu

function showSubmenu(){
	source config/submenus.sh
	sub-menu "menuCpanel"
  reload "return" "menuCpanel"
	pause
}

