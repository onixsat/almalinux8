#!/bin/sh
globais

read -r -d '' ENV_VAR_MENU << EOM
  ${BLUE}Menu Apache - ${BOLD}${RED}Configuracão${NORMAL}
EOM
createMenu "menuApache" "$ENV_VAR_MENU"
addMenuItem "menuApache" "Sub Menu" showSubmenu

function showSubmenu(){
  source config/submenus.sh
	sub-menu "menuApache"
	reload "return" "menuApache"
	pause
}