#!/bin/bash
{

thisFilePath="$( dirname "${BASH_SOURCE[0]}" )"
source "$thisFilePath/libs/pathUtils.sh"
source "$thisFilePath/libs/functions.sh"

proteger
#source "$thisFilePath/libs/privado.sh"
#chmod +x "$thisFilePath/libs/privado.sh"
#$thisFilePath/libs/privado.sh encrypt ./config/config.sh
#cryptr_main encrypt ./config/config.sh
#echo "ok"
#sleep 5

srcLibFile "menuUtils.sh"
srcConfigFile "menus.sh"

TRUE=0
FALSE=1
NIL='nil'

ORIG_DIR="$(pwd)"
SCRIPT_DIR="$(getActiveScriptDir)"
BASHRC=~/.bashrc

function main() {
    keepGoing=$TRUE
    cd "$SCRIPT_DIR"
    init
    
    while keepGoing; do
        loadMenu "mainMenu" || l8r
    done
    
    cd "$ORIG_DIR"
    resetBashFunctions
    clear
}

function keepGoing() {
    return $keepGoing;
}

function init() {
    HEADER="$HEADER_MSG"
}

function resetBashFunctions() {
    echo "Removing all functions in current shell... Count:"
    declare -F |wc -l
    for line in $(declare -F | cut -d' ' -f3); do unset -f $line; done
    echo "Removed. Function Count:"
    declare -F |wc -l
    . $BASHRC
    echo "Reset BASHRC; Function Count:"
    declare -F |wc -l
}

main "$@"
} 2>&1 | tee btk.log