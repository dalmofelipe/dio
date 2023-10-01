#!/bin/bash

# Diretórios
mkdir /adm
mkdir /ven
mkdir /sec
mkdir /publico

# Usuários
useradd joao_  -m -c "João" -s "/bin/bash" -p $(openssl passwd Senha123)
useradd carlos  -m -c "" -s "/bin/bash" -p $(openssl passwd Senha123)
useradd maria  -m -c "Maria" -s "/bin/bash" -p $(openssl passwd Senha123)

useradd debora -m -c "Débora" -s "/bin/bash" -p $(openssl passwd Senha123)
useradd sebastiana -m -c "Sebastiana" -s "/bin/bash" -p $(openssl passwd Senha123)
useradd roberto -m -c "Roberto" -s "/bin/bash" -p $(openssl passwd Senha123)

useradd josefina -m -c "Josefina" -s "/bin/bash" -p $(openssl passwd Senha123)
useradd amanda -m -c "Amanda" -s "/bin/bash" -p $(openssl passwd Senha123)
useradd rogerio -m -c "Rogerio" -s "/bin/bash" -p $(openssl passwd Senha123)

# Grupos
addgroup grp_adm
addgroup grp_ven
addgroup grp_sec

# Adicionando usuário nos devidos groups
addgroup joao_ grp_adm 
addgroup carlos grp_adm 
addgroup maria grp_adm 

addgroup debora grp_ven 
addgroup sebastiana grp_ven 
addgroup roberto grp_ven 

addgroup josefina grp_sec 
addgroup amanda grp_sec 
addgroup rogerio grp_sec 

# permissao dos grupos
setfacl -m g:grp_adm:rwx -R /adm
setfacl -m g:grp_ven:rwx -R /ven
setfacl -m g:grp_sec:rwx -R /sec

setfacl -m g:grp_adm:rwx -R /publico
setfacl -m g:grp_ven:rwx -R /publico
setfacl -m g:grp_sec:rwx -R /publico

setfacl -m g:grp_ven:--- -R /adm
setfacl -m g:grp_sec:--- -R /adm

setfacl -m g:grp_adm:--- -R /ven
setfacl -m g:grp_sec:--- -R /ven

setfacl -m g:grp_adm:--- -R /sec
setfacl -m g:grp_ven:--- -R /sec


