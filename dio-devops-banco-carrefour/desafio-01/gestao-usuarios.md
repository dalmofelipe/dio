
## GESTAO DE USUARIOS, GRUPOS E PERMISSOES

```bash 
useradd --help
```


#### CRIAR USUARIO

```bash
useradd [login_name]
```


#### CRIAR PASTA EM $HOME E NOME COMPLETO DO USUÁRIO

```bash
useradd [login_name] -m -c "Meu Nome Não É Johnny"
```


#### DELETAR USUARIO

```bash
userdel -f -r [login-name]
```


#### SETAR SENHA DO USUÁRIO

```bash
passd [login_usuario]
```


#### CONFIGURA SHELL PADRAO DA CONTA

```bash
chsh -s /bin/bash [login_usuario]
```


#### COMANDO COMPLETO

```bash
useradd johnny -m -c "Johnny" -s "/bin/bash" -p $(openssl passwd Senha123)
```


#### MODIFICAR GRUPOS DE USUÁRIOS

```bash
usermod -G GROUP_NAME,GROUP_NAME USER_NAME
```


#### CRIAR GRUPOS

```bash
groupadd GROUP_NAME

addgroup GROUP_NAME
```


#### PERMISSOES DE ARQUIVOS E DIRETORIOS

Binário 
0 = 000
1 = 001
2 = 010
3 = 011
4 = 100
5 = 101
6 = 110
7 = 111

-rwxrwxrwx+	

tipo usuario group others  +

-    rwx     rwx   rwx	   permissoes ACL

```bash
chmod 750 iac.sh
```
-rwxr-x---

-111101000


#### ALTERAR DONO DO DIRETORIO OU ARQUIVO

```bash
chown USER_NAME:GROUP_NAME /DIRETORIO/
```


#### LISTAR USUÁRIOS DE UM GRUPO

```bash
grep nomegrupo /etc/group
```

##### ALTERANDO PERMISSOES DE GRUPOS

```bash
sudo setfacl -m g:diretoria:rwx -R /Arquivos
sudo setfacl -m g:ouvidoria:r-x -R /Arquivos
sudo setfacl -m g:portaria:--- -R /Arquivos
```

```bash
getfacl PASTA/ARQUIVO
```
