#!/usr/bin/env bash



echo "${BLUE}Atualizando o sistema...${NORMAL}"
#curl -s -L https://www.alphagnu.com/upload/centos7-repo-fix.sh | bash
sudo yum update -y ;
sudo yum upgrade -y ;
dnf install wget curl -y ;
dnf install php-dev php-pecl -y ;
yum -y install zip unzip net-tools yum-utils
yum -y install httpd mysql-server php php-mysql
sudo yum install openssh-clients -y ;
echo "${WHITE}Atualizado!"
banner 2 "Servidor" "Configuracão" "Update"

echo "${BLUE}Stopping and disabling NetworkManager and disabling SELINUX.${NORMAL}"
systemctl stop NetworkManager ;
systemctl disable NetworkManager ;
NOW=$(date +"%m_%d_%Y-%H_%M_%S")
cp /etc/selinux/config /etc/selinux/config.bckup.$NOW
sed -i -e 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config ;
log "NetworkManager stopped and disabled."
echo "${WHITE}NetworkManager stopped and disabled."
echo "${WHITE}Selinux Disabled."
banner 2 "Servidor" "Configuracão" "Update"

echo "${BLUE}Enabling / Updating initial quotas! A reboot in the end will be required.${NORMAL}"
yes |  /scripts/initquotas ;
echo "${WHITE}Server quotas are enabled!"
banner 2 "Servidor" "Configuracão" "Update"

echo "${BLUE}Outros.${NORMAL}"


echo "${WHITE}Outros executado!"