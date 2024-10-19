<style>
html { font-size: 100%; overflow-y: scroll; -webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%; }


body{
color:#444;
font-family:Georgia, Palatino, 'Palatino Linotype', Times, 'Times New Roman', serif;
font-size:12px;
line-height:1.5em;
padding:1em;
margin:auto;
max-width:42em;
background:#fefefe;
}


a{ color: #0645ad; text-decoration:none;}
a:visited{ color: #0b0080; }
a:hover{ color: #06e; }
a:active{ color:#faa700; }
a:focus{ outline: thin dotted; }
a:hover, a:active{ outline: 0; }


::-moz-selection{background:rgba(255,255,0,0.3);color:#000}
::selection{background:rgba(255,255,0,0.3);color:#000}


a::-moz-selection{background:rgba(255,255,0,0.3);color:#0645ad}
a::selection{background:rgba(255,255,0,0.3);color:#0645ad}


p{
margin:1em 0;
}


img{
max-width:100%;
}


h1,h2,h3,h4,h5,h6{
font-weight:normal;
color:#111;
line-height:1em;
}
h4,h5,h6{ font-weight: bold; }
h1{ font-size:2.5em; }
h2{ font-size:2em; }
h3{ font-size:1.5em; }
h4{ font-size:1.2em; }
h5{ font-size:1em; }
h6{ font-size:0.9em; }


blockquote{
color:#666666;
margin:0;
padding-left: 3em;
border-left: 0.5em #EEE solid;
}
hr { display: block; height: 2px; border: 0; border-top: 1px solid #aaa;border-bottom: 1px solid #eee; margin: 1em 0; padding: 0; }
pre, code, kbd, samp { color: #000; font-family: monospace, monospace; _font-family: 'courier new', monospace; font-size: 0.98em; background-color: #e8e8e8; border-radius: 0.4em; padding: 0.2em; }
pre { white-space: pre; white-space: pre-wrap; word-wrap: break-word; }


b, strong { font-weight: bold; }


dfn { font-style: italic; }


ins { background: #ff9; color: #000; text-decoration: none; }


mark { background: #ff0; color: #000; font-style: italic; font-weight: bold; }


sub, sup { font-size: 75%; line-height: 0; position: relative; vertical-align: baseline; }
sup { top: -0.5em; }
sub { bottom: -0.25em; }


ul, ol { margin: 1em 0; padding: 0 0 0 2em; }
li p:last-child { margin:0 }
dd { margin: 0 0 0 2em; }


img { border: 0; -ms-interpolation-mode: bicubic; vertical-align: middle; }


table { border-collapse: collapse; border-spacing: 0; }
td { vertical-align: top; }


dt { font-weight: bold; }


@media only screen and (min-width: 480px) {
body{font-size:14px;}
}


@media only screen and (min-width: 768px) {
body{font-size:16px;}
}


@media print {
  * { background: transparent !important; color: black !important; filter:none !important; -ms-filter: none !important; }
  body{font-size:12pt; max-width:100%;}
  a, a:visited { text-decoration: underline; }
  hr { height: 1px; border:0; border-bottom:1px solid black; }
  a[href]:after { content: " (" attr(href) ")"; }
  abbr[title]:after { content: " (" attr(title) ")"; }
  .ir a:after, a[href^="javascript:"]:after, a[href^="#"]:after { content: ""; }
  pre, blockquote { border: 1px solid #999; padding-right: 1em; page-break-inside: avoid; }
  tr, img { page-break-inside: avoid; }
  img { max-width: 100% !important; }
  @page :left { margin: 15mm 20mm 15mm 10mm; }
  @page :right { margin: 15mm 10mm 15mm 20mm; }
  p, h2, h3 { orphans: 3; widows: 3; }
  h2, h3 { page-break-after: avoid; }
}
</style>
__Bash Almalinux 8__
---
___

<h5 style="height:0px">Configuração</h5>
<sub>[ [SSH](root) <span style="color:lightblue">Username: *root*</span> ] Password: <span style="color:gray">*Palmalinux*</span></sub>\
<sup>[ [Encriptação](root) <span style="color:lightblue">*Sistema*</span> ] Password: <span style="color:gray">*12345*</span></sup>

---
Continuar...

---
## recursive WP file & folder permissions fix
find /home/*/public_html -type d -exec chmod 755 {} \;\
find /home/*/public_html -type f -exec chmod 644 {} \;


chown -R nobody /home/project/ \
chown -R project /home/project/







Primeiro

``` Iniciar
cd /home
git clone https://github.com/onixsat/almalinux8.git
cd almalinux8
bash btk.sh

wget https://raw.githubusercontent.com/onixsat/almalinux8/refs/heads/main/scripts/iniciar.sh -O ./iniciar.sh && bash iniciar.sh
```
-----------------------------------
 sudo chmod +x ~/virtualhost
https://raw.githubusercontent.com/onixsat/almalinux8/refs/heads/main/scripts/install_cpanel.sh

echo "Install php..."
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt install php7.4 php7.4-dev php7.4-cli libapache2-mod-php7.4 php7.4-common php7.4-mbstring php7.4-xmlrpc php7.4-soap php7.4-gd php7.4-xml php7.4-intl php7.4-mysql php7.4-cli php7.4-zip php7.4-curl -y

hostnamectl set-hostname my.new-hostname.server
hostnamectl
nano /etc/hosts
cd etc/sysconfig/network-scripts/

---------------------- PRIMEIRO

curl -s -L https://www.alphagnu.com/upload/centos7-repo-fix.sh | bash
yum install wget nano net-tools -y
yum -y update
yum -y upgrade
yum install epel-release
yum install nginx

#wget https://raw.githubusercontent.com/zpanel/installers/refs/heads/master/install/beta/CentOS_7/beta-Centos-7-10.1.1.sh

---------------------- SEGUNDO

    ip addr
    hostname
    nano /etc/hosts
    nano /etc/hostname 
    ping onixsat.line.pm
    ifconfig
   ip addr show enp0s3 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'
   sudo systemctl enable httpd.service
   sudo yum install mariadb-server
   sudo systemctl start mariadb
   sudo systemctl enable mariadb.service
   sudo systemctl status mariadb
   sudo yum install php php-mysql
   sudo systemctl restart httpd.service
   php -v
   sudo chown -R root.root /var/www/html/ #sammy is exmple. user 
   
nano /var/www/html/nano a.sh
bash a.sh 
 ip addr
  cd /var/www/html/
  nano index.php 
 

---------------------- TERCEIRO

nano C:\Windows\System32\drivers\etc\hosts
192.168.1.95	onixsat.line.pm
46.189.234.37 	onixsat.line.pm


---------------------- QUARTO


https://freedomain.one
onixsat.line.pm

----------------------------------
https://www.youtube.com/watch?v=MZ7n0MeQvGU

curl -s -L https://www.alphagnu.com/upload/centos7-repo-fix.sh | bash
https://gitsang.github.io/docs/linux/install_php74_on_centos7/
https://gist.github.com/Henriquedn/a93f058be4965d2cd6b61a1d0e3cfd1e
https://github.com/mahmudtopu3/Deploy-PHP-Laravel-Application-on-Linux-Centos-7-VPS-Server-Guidelines-
https://www.linuxhelp.com/how-to-install-phpvirtualbox-in-centos-manage-virtualbox#!#google_vignette~
https://gist.github.com/virbo/71776c0a7f3c1442147eb9f5b4306af5
https://raw.githubusercontent.com/mdichirico/public-shell-scripts/master/setup-lamp-stack-on-cent-os-7.sh
https://gist.github.com/nunorbatista/919d8e888115930cebe2
https://gist.github.com/rajibbinalam/3265bf0e9878daedf2ce36d0b8769fad
https://gist.github.com/RatserX/b67ac5dc24e05ee6747950f40d232e7b



yum -y install wget zip unzip net-tools yum-utils
yum install httpd mysql-server php php-mysql

chkconfig httpd on
chkconfig mysqld on

systemctl stop firewalld
systemctl mask firewalld
yum install iptables-services -y
nano /etc/sysconfig/iptables

A INPUT -m state --state NEW -m tcp -p tcp --dport 22 -j ACCEPT
A INPUT -m state --state NEW -m tcp -p tcp --match multiport --dports 80,443,3306 -j ACCEPT

systemctl enable iptables
systemctl restart iptables
