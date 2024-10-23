<div align="center">
  <h2 style="text-align: center;">Configuração Almalinux 8</h2>
  <h6 align="center">Bash de configuração para servidores</h6>
  <a href="https://github.com/onixsat"><img src="scripts/logo.png" alt="Logo" width="40" height="40"></a>
  <br>
  <a id="readme-top"></a>
</div>
<details open>
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

* oi
<h5 style="color:lightblue">Username: *root* </h5>
  <font color="red">This is some text!</font>

# ${This\ is\ a\ {\color{red}Big}}\ Title$


<!-- MARKDOWN THEME -->
# $\textsf{\color{#f5750e}{f5750e}}$

## $\textsf{\color{#f48522}{f48522}}$

### $\textsf{\color{#326a95}{326a95}}$

#### $\textsf{\color{#18afd3}{18afd3}}$

##### $\textsf{\color{#5ec3d5}{5ec3d5}}$

I copy/paste from my theme to create my headings, similar example to this:

# $\textsf{\color{#f5750e}{Introduction}}$

Some introduction text.

### $\textsf{\color{#f48522}{Phase 1.}}$

Some phase 1 text.

#### $\textsf{\color{#326a95}{Section A.}}$

Some section a text.





<h3 style="color:#ff0000">Danger</h3>



$\textcolor{red}{\textsf{lorem ipsum}}$



_(🟦)this text will be rendered in blue_


- text in red
+ text in green
  ! text in orange
# text in gray
@@ text in purple (and bold)@@


<sub>[ [SSH](root) <span style='color:lightblue'># ${Username:\ {\color{red}root}}\ $ ] Password: <span style="color:gray">*Palmalinux*</span></sub>\
<sup>[ [Encriptação](root) <span style="color:lightblue">*Sistema*</span> ] Password: <span style="color:gray">*12345*</span></sup>
<code style="color : red">text</code>
<code>
<div style='color:lightblue'>Username: *root* </div>
</code>
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

<div id="CONTATOS">

  <div align="right">( <a href="#readme-top">Voltar ao topo</a> )</div>
  <h2 style="font-style:italic;">Contatos</h2>

  _OnixSat - [@onixsat](https://onixsat.pt) - smartapi@protonmail.com_
</div>
