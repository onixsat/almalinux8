<div align="center">
  <a href="https://onixsat">
    <img src="logo5.png" alt="reveal.js" width="350">
</a>

<sub>&ensp;&thinsp;&ensp;&thinsp;&ensp;&thinsp;&ensp;&thinsp;Bash de configuração para servidores</sub>
<a id="readme-top"></a>
</div>

<details>
  <summary>Menu de Nevegação</summary>
  <ol>
    <li><a href="#INSTALAR">Instalação</a></li>
    <li><a href="#PASSWORDS">Passwords</a></li>
    <li>
      <a href="#CODIGOS">Códigos</a>
      <ul>
        <li><a href="#BLOQUEAR">Bloquear</a></li>
        <li><a href="#OUTROS">Outros</a></li>
        <li><a href="#CARREGAR">Carregar</a></li>
      </ul>
    </li>
    <li><a href="#CONTATOS">Contatos</a></li>
  </ol>
</details>




<div id="INSTALAR">

<h2 style="font-style:italic;">🛠️ Instalação</h2>
<h6 style="font-style:italic;">Executar os comandos para instalar o sistema.</h6>

```bash
  sudo sudo
  git clone https://github.com/onixsat/almalinux8.git
  cd almalinux8
  bash btk.sh
 ```

</div>

<details id="PASSWORDS" open>
<summary>📫 Passwords</summary>

<h3 style="color:#f5750e">Danger</h3>

$\textcolor{red}{\textsf{Username}}$

<sub>[ [SSH](root) <span style='color:lightblue'>Username: *root* </span> ] Password: <span style="color:gray">*Palmalinux*</span></sub>\
<sup>[ [Encriptação](root) <span style="color:lightblue">*Sistema*</span> ] Password: <span style="color:gray">*12345*</span></sup>

<code></code>
</details>


<div id='CODIGOS'>

<h2 style="font-style:italic;">🚀 Códigos</h2>

_Códigos de script básicos para utilizaão na shell linux._

</div>

<div id="BLOQUEAR">

* __Bloquear__\
  *Bloquear alteração de ficheiros*

  ```bash
  chattr -i /etc/mailips
  chattr -i /etc/mailhelo
  chattr +i /etc/mailips
  chattr +i /etc/mailhelo
  ```

</div>

<div id="OUTROS">

* __Outros__
  ```bash
    banner "Apache" "Configuracão" "Password"
    titulo "Atualizando o sistema..."

    declare -A myArray
      myArray[A]="yum update -y"
      myArray[B]="hostname>h.txt"
      
    dados=$(jstrings ' && ' "${myArray[@]}")
    esperar "$dados" "${WHITE}Atualizando..." "Atualizado!"
  ```

</div>

<div id="CARREGAR">

* __Carregar__
  ```bash
  function carregar(){
    start_time2=$(date +%s%3N)
    start_loading "Carregando..."
    sleep 5
    stop_loading $?
    end_time2=$(date +%s%3N)
    duration_ms2=$((end_time2 - start_time2))
    echo "Execution: $duration_ms2"
  }

  esperar carregar "${WHITE}Carregando..." "Carregado!"
  ```

</div>

<div align="center" id="CONTATOS">
  <div align="right">( <a href="#readme-top">Voltar ao topo</a> )</div>

### &ensp;&thinsp;
 _MIT licensed | Copyright © 2011-2024  [@onixsat](https://onixsat.pt), smartapi@protonmail.com_
</div>
