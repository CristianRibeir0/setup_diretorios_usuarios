#!/bin/bash

# Criar os diretórios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# Criar os grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criar os usuários e adicioná-los aos grupos
# Usuários do grupo GRP_ADM
useradd carlos -m -s /bin/bash -G GRP_ADM
useradd maria -m -s /bin/bash -G GRP_ADM
useradd joao -m -s /bin/bash -G GRP_ADM

# Usuários do grupo GRP_VEN
useradd debora -m -s /bin/bash -G GRP_VEN
useradd sebastiana -m -s /bin/bash -G GRP_VEN
useradd roberto -m -s /bin/bash -G GRP_VEN

# Usuários do grupo GRP_SEC
useradd josefina -m -s /bin/bash -G GRP_SEC
useradd amanda -m -s /bin/bash -G GRP_SEC
useradd rogerio -m -s /bin/bash -G GRP_SEC

# Definir senhas para os usuários (exemplo: 'senha123')
echo "carlos:senha123" | chpasswd
echo "maria:senha123" | chpasswd
echo "joao:senha123" | chpasswd
echo "debora:senha123" | chpasswd
echo "sebastiana:senha123" | chpasswd
echo "roberto:senha123" | chpasswd
echo "josefina:senha123" | chpasswd
echo "amanda:senha123" | chpasswd
echo "rogerio:senha123" | chpasswd

# Definir permissões dos diretórios
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

# Alterar o grupo dos diretórios
chown :GRP_ADM /adm
chown :GRP_VEN /ven
chown :GRP_SEC /sec

# Definir permissões para os grupos nos diretórios
setfacl -m g:GRP_ADM:rwx /adm
setfacl -m g:GRP_VEN:rwx /ven
setfacl -m g:GRP_SEC:rwx /sec

echo "Script executado com sucesso!"

