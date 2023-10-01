
#### DOCKER

Comandos utilizados nos vídeos

<br>

```bash

docker pull ubuntu
docker run ubuntu
docker run ubuntu sleep 10
docker run ubuntu sleep 1500
docker stop [id]
docker run --help
docker run -it ubuntu
docker stop [id]
docker rm [id]
docker rmi [imagem]
docker run -dti --name Ubuntu-A ubuntu
docker run -dti  ubuntu 
docker exec -it [id ou nome]  /bin/bash
docker stop [id]
docker rm [id]
docker rmi [imagem]

docker run -dti --name Ubuntu-A ubuntu
docker exec -ti Ubuntu-A /bin/bash
docker exec Ubuntu-A mkdir /destino/
docker exec Ubuntu-A mkdir ls -l /
nano Arquivo.txt
docker cp arquivo.txt Ubuntu-A:/aula/
docker cp Ubuntu-A:/destino/Meuzip.zip  Zipcopia.zip



****bind mount *****

docker run -dti --mount type=bind,src=/opt/teste,dst=/teste debian

docker run -dti --mount type=bind,src=/opt/teste,dst=/teste,ro debian

***volumes****

docker volume create teste
docker volume ls

	/var/lib/docker/volumes/teste/_data
	
docker run -dti --mount type=volume,src=teste,dst=teste debian

docker volume rm teste



# docker pull mysql
# docker run -e MYSQL_ROOT_PASSWORD=Senha123 --name mysql-A -d -p 3306:3306 mysql
# docker exec -it mysql-A bash
# mysql -u root -p --protocol=tcp
CREATE DATABASE aula;
show databases;

# docker inspect mysql-A
# mysql -u root -p --protocol=tcp
docker run -e MYSQL_ROOT_PASSWORD=Senha123 --name mysql-A -d -p 3306:3306 --volume=/data:/var/lib/mysql mysql
mysql -u root -p --protocol=tcp --port=3306

CREATE TABLE alunos (
    AlunoID int,
    Nome varchar(50),
    Sobrenome varchar(50),
    Endereco varchar(150),
    Cidade varchar(50)
);

INSERT INTO alunos (AlunoID, Nome, Sobrenome, Endereco, Cidade) 
VALUES (
    1, 
    'Carlos Alberto', 
    'da Silva', 
    'Av. que sobe e desce que ninguém conhece', 
    'Manaus'
);

# informações do host
docker info

# registros do container
docker logs [container-id or name]
docker container logs [container-id or name]

# processos internos do container
docker container top [container-id or name]

# especificar quantidade de memoria de container
docker update [container-id or name] -m 128M


### NETWORK
docker network --help

# lista redes disponiveis
docker network ls

BRIDGE padrão ao criar containers sem especificar rede
HOST

# criar uma rede no docker 
docker network create [network-name]
docker network create nt-data

# exec container em rede especifica
docker run -dti --name ubuntu-A --network nt-data ubuntu

# excluir rede
docker network rm [network-name]

```

#### DOCKER FILE

```dockerfile

FROM ubuntu

RUN apt update -y && apt upgrade -y && apt install python3 -y && apt clean

COPY ./app.py /opt/app.py

CMD python3 /opt/app.py

```
