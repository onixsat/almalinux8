#!/bin/sh
globais

read -r -d '' ENV_VAR_MENU << EOM
  ${BLUE}Menu Servidor - ${BOLD}${RED}Configuracão${NORMAL}
EOM
createMenu "menuServidor" "$ENV_VAR_MENU"
addMenuItem "menuServidor" "Iniciar" showIniciar
addMenuItem "menuServidor" "Password" showPassword
addMenuItem "menuServidor" "Update" showUpdate
addMenuItem "menuServidor" "Instalar" showInstalar
addMenuItem "menuServidor" "Configuracao" showConfig

function showIniciar(){
	banner "Servidor" "Configuracão" "Iniciar"
	echo "init"
	reload "return" "menuServidor"
	pause
}
function showPassword(){
	banner "Servidor" "Configuracão" "Password"
	source menus/servidor/password.sh
	reload "return" "menuServidor"
	pause
}
function showUpdate(){
	banner "Servidor" "Configuracão" "Update"
	source menus/servidor/update.sh
	reload "return" "menuServidor"
	pause
}
function showInstalar(){
	banner "Servidor" "Configuracão" "Instalar"
	source menus/servidor/instalar.sh
	reload "return" "menuServidor"
	pause
}
function showConfig(){
	banner "Servidor" "Configuracão" "Configurar"
	source menus/servidor/config.sh
	reload "return" "menuServidor"
	pause
}