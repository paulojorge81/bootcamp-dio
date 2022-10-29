#!/bin/bash

echo "CRIANDO DIRETORIOS..."

mkdir /adm
mkdir /publico
mkdir /sec
mkdir /ven

echo "CRIANDO GRUPOS..."

groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

echo "CRIANDO USUARIOS..."

useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
useradd debora -c "Débora" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM

useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC

useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
useradd rogerio -c "Rogério" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN

echo "DEFININDO DONO DOS DIRETORIOS..."

chown root:GRP_ADM /adm
chown root:GRP_SEC /sec
chown root:GRP_VEN /ven

echo "DEFININDO PERMISSOES DOS DIRETORIOS..."

chmod 777 /publico
chmod 770 /adm
chmod 770 /sec
chmod 770 /ven

echo "SCRIPT FINALIZADO!"
