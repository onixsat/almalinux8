#!/bin/bash
HEADER_MSG="Bash Centos 7"

createMenu "mainMenu" "Main Menu"
addMenuItem "mainMenu" "Servidor" loadMenu "menuServidor"
addMenuItem "mainMenu" "Cpanel" loadMenu "menuCpanel"
addMenuItem "mainMenu" "Apache" loadMenu "menuApache"
addMenuItem "mainMenu" "DNS" loadMenu "menuDns"
addMenuItem "mainMenu" "Quit" l8r

source menus/servidor.sh
source menus/cpanel.sh
source menus/apache.sh
source menus/dns.sh