---
__Advertisement :)__

- __[pica](https://nodeca.github.io/pica/demo/)__ - high quality and fast image
  resize in browser.
- __[babelfish](https://github.com/nodeca/babelfish/)__ - developer friendly
  i18n with plurals support and easy syntax.

You will like those projects!

---

# h1 Heading 8-)
## h2 Heading
### h3 Heading
#### h4 Heading
##### h5 Heading
###### h6 Heading


## Horizontal Rules

___

---

***


## Typographic replacements

Enable typographer option to see result.

(c) (C) (r) (R) (tm) (TM) (p) (P) +-

test.. test... test..... test?..... test!....

!!!!!! ???? ,,  -- ---

"Smartypants, double quotes" and 'single quotes'


## Emphasis

**This is bold text**

__This is bold text__

*This is italic text*

_This is italic text_

~~Strikethrough~~


## Blockquotes


> Blockquotes can also be nested...
>> ...by using additional greater-than signs right next to each other...
> > > ...or with spaces between arrows.


## Lists

Unordered

+ Create a list by starting a line with `+`, `-`, or `*`
+ Sub-lists are made by indenting 2 spaces:
  - Marker character change forces new list start:
    * Ac tristique libero volutpat at
    + Facilisis in pretium nisl aliquet
    - Nulla volutpat aliquam velit
+ Very easy!

Ordered

1. Lorem ipsum dolor sit amet
2. Consectetur adipiscing elit
3. Integer molestie lorem at massa


1. You can use sequential numbers...
1. ...or keep all the numbers as `1.`

Start numbering with offset:

57. foo
1. bar


## Code

Inline `code`

Indented code

    // Some comments
    line 1 of code
    line 2 of code
    line 3 of code


Block code "fences"

```
Sample text here...
```

Syntax highlighting

``` js
var foo = function (bar) {
  return bar++;
};

console.log(foo(5));
```

## Tables

| Option | Description |
| ------ | ----------- |
| data   | path to data files to supply the data that will be passed into templates. |
| engine | engine to be used for processing templates. Handlebars is the default. |
| ext    | extension to be used for dest files. |

Right aligned columns

| Option | Description |
| ------:| -----------:|
| data   | path to data files to supply the data that will be passed into templates. |
| engine | engine to be used for processing templates. Handlebars is the default. |
| ext    | extension to be used for dest files. |


## Links

[link text](http://dev.nodeca.com)

[link with title](http://nodeca.github.io/pica/demo/ "title text!")

Autoconverted link https://github.com/nodeca/pica (enable linkify to see)


## Images

![Minion](https://octodex.github.com/images/minion.png)
![Stormtroopocat](https://octodex.github.com/images/stormtroopocat.jpg "The Stormtroopocat")

Like links, Images also have a footnote style syntax

![Alt text][id]

With a reference later in the document defining the URL location:

[id]: https://octodex.github.com/images/dojocat.jpg  "The Dojocat"


## Plugins

The killer feature of `markdown-it` is very effective support of
[syntax plugins](https://www.npmjs.org/browse/keyword/markdown-it-plugin).


### [Emojies](https://github.com/markdown-it/markdown-it-emoji)

> Classic markup: :wink: :cry: :laughing: :yum:
>
> Shortcuts (emoticons): :-) :-( 8-) ;)

see [how to change output](https://github.com/markdown-it/markdown-it-emoji#change-output) with twemoji.


### [Subscript](https://github.com/markdown-it/markdown-it-sub) / [Superscript](https://github.com/markdown-it/markdown-it-sup)

- 19^th^
- H~2~O


### [\<ins>](https://github.com/markdown-it/markdown-it-ins)

++Inserted text++


### [\<mark>](https://github.com/markdown-it/markdown-it-mark)

==Marked text==


### [Footnotes](https://github.com/markdown-it/markdown-it-footnote)

Footnote 1 link[^first].

Footnote 2 link[^second].

Inline footnote^[Text of inline footnote] definition.

Duplicated footnote reference[^second].

[^first]: Footnote **can have markup**

    and multiple paragraphs.

[^second]: Footnote text.


### [Definition lists](https://github.com/markdown-it/markdown-it-deflist)

Term 1

:   Definition 1
with lazy continuation.

Term 2 with *inline markup*

:   Definition 2

        { some code, part of Definition 2 }

    Third paragraph of definition 2.

_Compact style:_

Term 1
  ~ Definition 1

Term 2
  ~ Definition 2a
  ~ Definition 2b


### [Abbreviations](https://github.com/markdown-it/markdown-it-abbr)

This is HTML abbreviation example.

It converts "HTML", but keep intact partial entries like "xxxHTMLyyy" and so on.

*[HTML]: Hyper Text Markup Language

### [Custom containers](https://github.com/markdown-it/markdown-it-container)

::: warning
*here be dragons*
:::

# Bash Almalinux8
wget https://raw.githubusercontent.com/onixsat/almalinux8/refs/heads/main/scripts/iniciar.sh -O ./iniciar.sh && bash iniciar.sh



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
