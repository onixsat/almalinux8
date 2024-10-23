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
<li><a href="#TESTE">TESTE</a></li>
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

<details>  
  <summary>Click to expand dropdown</summary>    
  <div class="image-container">    
    <a href="https://google.com">    
      <span style="content:url('https://r7.hiclipart.com/path/133/147/693/arrow-bullet-computer-icons-bullet-holes-e2beb2b74def46ebed678b15bb0e8012.png');width:100px;height:100px"></span>
    </a>
  </div>    
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

<details id="TESTE">
<summary>VER TESTE</summary>
<pre>
<sub>[ [SSH](root) <span style="color:lightblue">Username: *root*</span> ] Password: <span style="color:gray">*Palmalinux*</span></sub>\
<sup>[ [Encriptação](root) <span style="color:lightblue">*Sistema*</span> ] Password: <span style="color:gray">*12345*</span></sup>
</pre>
</details>

<div id="PASSWORDS">

  <h3 style="font-style:italic;">📫 Passwords</h3>

  <sub>[ [SSH](root) <span style="color:lightblue">Username: *root*</span> ] Password: <span style="color:gray">*Palmalinux*</span></sub>\
  <sup>[ [Encriptação](root) <span style="color:lightblue">*Sistema*</span> ] Password: <span style="color:gray">*12345*</span></sup>

</div>

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
