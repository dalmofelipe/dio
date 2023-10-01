ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '123456';
/* ALTER USER 'dio'@'localhost' IDENTIFIED WITH mysql_native_password BY 'dio123'; */

CREATE USER 'dio'@'localhost' IDENTIFIED WITH mysql_native_password BY 'dio123';

CREATE DATABASE IF NOT EXISTS dioappdb;

CREATE TABLE mensagens (
    id int,
    nome varchar(255),
    email varchar(255),
    comentario varchar(255)
);
