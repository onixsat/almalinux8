<sub>[ [SSH](root) <span style="color:lightblue">Username: *root*</span> ] Password: <span style="color:gray">*Palmalinux*</span></sub>\
<sup>[ [Encriptação](root) <span style="color:lightblue">*Sistema*</span> ] Password: <span style="color:gray">*12345*</span></sup>

<div align="center">
  <h2 style="text-align: center;">Configuração Almalinux 8</h2>
  <h6 align="center">Bash de configuração para servidores</h6>
  <a href="https://github.com/onixsat"><img src="scripts/logo.png" alt="Logo" width="40" height="40"></a>
  <br><br><br>
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
  <span style="font-style:italic;">Executar os comandos para instalar o sistema.</span>

```bash
  sudo sudo
  git clone https://github.com/onixsat/almalinux8.git
  cd almalinux8
  bash btk.sh
 ```

</div>

<div id="PASSWORDS">

  <!-- PASSWORDS -->
### 📫 Passwords
* lol

<sub>[ [SSH](root) <span style="color:lightblue">Username: *root*</span> ] Password: <span style="color:gray">*Palmalinux*</span></sub>\
<sup>[ [Encriptação](root) <span style="color:lightblue">*Sistema*</span> ] Password: <span style="color:gray">*12345*</span></sup>

</div>

<div id='CODIGOS'>

  <!-- CODIGOS -->
  <h2 style="font-style:italic;">🚀 Códigos</h2>

  _Códigos de script básicos para utilizaão na shell linux._

</div>

<div id="BLOQUEAR">

  <!-- BLOQUEAR -->

* __Bloquear__\
  *Bloquear alteração de ficheiros*
*
  ```bash
  chattr -i /etc/mailips
  chattr -i /etc/mailhelo
  chattr +i /etc/mailips
  chattr +i /etc/mailhelo
  ```

</div>

<div id="OUTROS">

  <!-- OUTROS -->

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

  <!-- CARREGAR -->

* _Carregar_
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

<div id='CONTATOS'>
  <div align="right">(<a href="#readme-top">back to top</a>)</div>
  <!-- CONTATOS -->
  <h2 style="font-style:italic;">Contatos</h2>
OnixSat - [@onixsat](https://onixsat.pt) - smartapi@protonmail.com
</div>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/github_username/repo_name.svg?style=for-the-badge
[contributors-url]: https://github.com/github_username/repo_name/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/github_username/repo_name.svg?style=for-the-badge
[forks-url]: https://github.com/github_username/repo_name/network/members
[stars-shield]: https://img.shields.io/github/stars/github_username/repo_name.svg?style=for-the-badge
[stars-url]: https://github.com/github_username/repo_name/stargazers
[issues-shield]: https://img.shields.io/github/issues/github_username/repo_name.svg?style=for-the-badge
[issues-url]: https://github.com/github_username/repo_name/issues
[license-shield]: https://img.shields.io/github/license/github_username/repo_name.svg?style=for-the-badge
[license-url]: https://github.com/github_username/repo_name/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/linkedin_username
[product-screenshot]: images/screenshot.png
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com 
