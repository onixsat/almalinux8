function globais(){
  sshport="2022"
  version="1.0.0"
  WHITE="$(tput setaf 7)"
  CYAN="$(tput setaf 6)"
  MAGENTA="$(tput setaf 5)"
  YELLOW="$(tput setaf 3)"
  GREEN="$(tput setaf 2)"
  BLUE="$(tput setaf 4)"
  RED="$(tput setaf 1)"
  NORMAL="$(tput sgr0)"
  BOLD="$(tput bold)"
  tput init
}
function banner(){
  tput init
  data1=$1
  if [[ $data1 = *[[:digit:]]* ]]; then
    data1=$1
    sleep "$data1"
    var1=$2
    var2=$3
    var3=$4
  else
    var1=$1
    var2=$2
    var3=$3
  fi

  clear

  if [ -z "$var3" ]
  then
    echo -n "${GREEN}                                                         "
    echo -e "${BLUE}                       Version ${version}${YELLOW} Bash OnixSat 2024"
  else
    echo -n ""
    #printf "%100s |%s\n" ""
    #printf '%*s' $(tput cols) ""
    #tput cup $((LINES-2)) $((COLUMNS-4));echo "[OK]"
    #${BOLD}
    echo -e "${GREEN}Menu ${var1} ${BLUE}- ${YELLOW}${var2} ${GREEN}> ${BOLD}${RED}${var3}"
  fi

  echo -n "${NORMAL}"
  printf "%45s" " " | tr ' ' '-'
  echo -e "${NORMAL}"
  echo -n "${NORMAL}"
  tput init
}
function reload(){
  tput init
  data1=$1 data2=$2
	echo -n "Press Enter to $data1"
	read response
	loadMenu "$data2"
}
function loading(){
    EraseToEOL=$(tput el)
    max=$((SECONDS + 3))              # add 10 seconds to current count

    while [ $SECONDS -le ${max} ]
    do
        msg='Atualizando'
        for i in {1..4}
        do
            printf "%s" "${msg}"
            msg='.'
            sleep .2
        done
        printf "\r${EraseToEOL}"

    done
    echo -e "\\r${WHITE}Atualizado!"
    printf "\n"
}
function loading_icon(){

    local load_interval="${1}"
    local loading_message="${2}"
    local elapsed=0
    local loading_animation=( '—' "\\" '|' '/' )

    echo -n "${WHITE}${loading_message} "

    # This part is to make the cursor not blink on top of the animation while it lasts
    tput civis
    trap "tput cnorm" EXIT
    while [ "${load_interval}" -ne "${elapsed}" ]; do
        for frame in "${loading_animation[@]}" ; do
            printf "%s\b" "${frame}"
            sleep 0.25
        done
        elapsed=$(( elapsed + 1 ))
    done
    echo -e "\\r${WHITE}${CHECK_MARK} Atualizado!"
    printf " \b\n"

}
function clearLastLines(){
    local linesToClear=$1
    for (( i=0; i<linesToClear; i++ )); do
        tput cuu 1
        tput el
    done
}
function esperar(){
  # Executar e esperar
  # Run the command passed as 1st argument and shows the spinner until this is done
  # @param String $1 the command to run
  # @param String $2 the title to show next the spinner
  # @param var $3 the variable containing the return code
  CINZA="$(tput setaf 8)"
  CHECK_MARK="\033[0;32m\xE2\x9C\x94\033[0m"
  CHECK_SYMBOL='\u2713'
  X_SYMBOL='\u2A2F'
  local __resultvar=$3
  local msg=$2

  eval $1 >/tmp/execute-and-wait.log 2>&1 &
  pid=$!
  delay=0.05

  frames=('\u280B' '\u2819' '\u2839' '\u2838' '\u283C' '\u2834' '\u2826' '\u2827' '\u2807' '\u280F')

  echo "$pid" >"/tmp/.spinner.pid"

  tput civis # Hide the cursor, it looks ugly :D
  index=0
  framesCount=${#frames[@]}
  while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
    printf "${YELLOW}${frames[$index]}${NC} ${GREEN}${msg}${NC}"

    let index=index+1
    if [ "$index" -ge "$framesCount" ]; then
      index=0
    fi

    printf "\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"
    sleep $delay
  done

  echo -e "\b\\r${CHECK_MARK}${CINZA} Atualizado!   "

  #printf " \b\n"
  # Wait the command to be finished, this is needed to capture its exit status
  #wait $!
  #exitCode=$?
  #if [ "$exitCode" -eq "0" ]; then
  #  printf "${CHECK_SYMBOL} ${2}                                                                \b\n"
  #else
  #  printf "${X_SYMBOL} ${2}                                                                \b\n"
  #fi

  # Restore the cursor
  #tput cnorm
  #eval $__resultvar=$exitCode
}
function titulo(){
  tput init
  titulo=$1
  if [[ $titulo = *[[:digit:]]* ]]; then
    sleep "$titulo"
    titulo=$2
  fi

  echo "${BLUE}${titulo}${NORMAL}"

  tput init
}
function cores() {
    END=200
    for i in $(seq 0 $END); do
        echo "$i: `tput setaf $i`0123456789abcdef@`tput sgr0`"
        `tput setaf $i` 2>&1 | grep -Eo "\^\[\[[0-9]+m$"
    done
}
countdown(){
  cdx(){
    countdown && printf "%s\n" "DONE changing to "${1} # Gives out if return is 0 (${?})
  }
  spinner=(
  "Working    "
  "Working.   "
  "Working..  "
  "Working... "
  "Working...."
  )

  i=4

  if [ ${i} -lt 5 ]
  then
   while true
    do
     for i in ${i}
      do
       printf "%s    \t" ${spinner[i]}
       sleep .1
       printf "\r"
       sleep .1
       if [ ${i} -eq 0 ]
        then
         # Here you can clean up or do what to do at zero count
         printf "\n"
         unset i
         unset spinner
         return 0 # Can be used in ${?} from parent bash
       else
        i=$((${i}-1))
      fi
    done
   done
  return 1 # Should never be executed
  fi
}
all(){
  #echo -e "\\r${WHITE}${CHECK_MARK} Atualizado!"
  #banner 2 "Servidor" "Configuracão" "Password"
  #read -p "Continuando...." -t 5
  texto(){
    Comandos de modo de texto
    tput bold # Selecionar modo negrito
    tput dim # Selecionar modo de brilho reduzido
    tput smul # Ativar modo de sublinhado
    tput rmul # Desativar modo de sublinhado
    tput rev # Ativar modo de vídeo invertido
    tput smso # Entrar no modo destacado (negrito)
    tput rmso # Sair do modo destacado
    Comandos de movimentação de cursor
    tput cup Y X # Mover o cursor para a posição X,Y da tela (canto superior esquerdo é 0,0)
    tput cuf N # Mover N caracteres para frente (direita)
    tput cub N # Mover N caracteres para trás (esquerda)
    tput cuu N # Mover N linhas para cima
    tput ll # Mover para a última linha, primeira coluna (se não houver cup)
    tput sc # Salvar a posição do cursor
    tput rc # Restaurar a posição do cursor
    tput lines # Mostrar o número de linhas do terminal
    tput cols # Mostrar o número de colunas do terminal
    Comandos de limpeza e inserção
    tput ech N # Apagar N caracteres
    tput clear # Limpar a tela e mover o cursor para 0,0
    tput el 1 # Limpar até o início da linha
    tput el # Limpar até o final da linha
    tput ed # Limpar até o final da tela
    tput ich N # Inserir N caracteres (move o resto da linha para frente!)
    tput il N # Inserir N linhas
    Outros comandos
    tput sgr0 # Restaurar o formato de texto para o padrão do terminal
    tput bel # Emitir um sinal sonoro
  }
}
