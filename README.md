<p align="center">
  <a href="https://revealjs.com">
  <img src="logo4.png" alt="reveal.js" width="350">
  </a>
  <br><br>
  <a href="https://github.com/hakimel/reveal.js/actions"><img src="https://github.com/hakimel/reveal.js/workflows/tests/badge.svg"></a>
  <a href="https://slides.com/"><img src="https://s3.amazonaws.com/static.slid.es/images/slides-github-banner-320x40.png?1" alt="Slides" width="160" height="20"></a>
</p>
<div align="center">

`Hello This is a code`
`` Using `single back ticks` inside double back ticks``

'Hello This is a code'

Some of these words <ins>will be underlined</ins>

<sub>This text will be smaller</sub>      
<sup>This text will be bigger</sup> 
  
##### ${[\ {\color{#326a95}SSH}}\ ]$ Username ${(\ {\color{#f48522}root}}\ )$

## Configuração $\textsf{\color{#f48522}{Almalinux 8}}$

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

<div align="center">
  <table>
    <td align="center">
      <a href="https://workos.com/?utm_campaign=github_repo&utm_medium=referral&utm_content=revealjs&utm_source=github">
        <div>
          <img src="https://user-images.githubusercontent.com/629429/151508669-efb4c3b3-8fe3-45eb-8e47-e9510b5f0af1.svg" width="290" alt="WorkOS">
        </div>
        <b>Your app, enterprise-ready.</b>
        <div>
          <sub>Start selling to enterprise customers with just a few lines of code. Add Single Sign-On (and more) in minutes instead of months.</sup>
        </div>
      </a>
    </td>
  </table>
</div>


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


#### $\textcolor{red}{\textsf{Username: *root*}}$

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

<div id="CONTATOS">

  <div align="right">( <a href="#readme-top">Voltar ao topo</a> )</div>
  <h2 style="font-style:italic;">Contatos</h2>

  _OnixSat - [@onixsat](https://onixsat.pt) - smartapi@protonmail.com_
</div>
--- 
<div align="center">
  MIT licensed | Copyright © 2011-2024 Hakim El Hattab, https://hakim.se
</div>
