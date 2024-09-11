/*Criando um banco de dados - SQL*/

CREATE DATABASE sistemadeacademia;

/* Exibir se o banco de dados foi criado*/
show databases;

--Deletar um banco de dados--
DROP DATABASE sistemadeacademia;

/* Usar o banco de dados que vou criar tabelas e dados na sequência*/
USE DATABASE sistemadeacademia; --no modelo Maria DB não aceitou--

/* Criando tabela no banco de dados*/
CREATE TABLE cadasrtocliente (
    cpf CHAR(15) primary key, 
    nomecompleto CHAR(200) NOT NULL,
    datadenascimento DATE NOT NULL,
    email CHAR(50) UNIQUE NOT NULL,
    telefone INT(15) NOT NULL,
    cep INT(8) NOT NULL,
    rua VARCHAR(50) NOT NULL,
    numero CHAR(8) NOT NULL,
    compemento CHAR(50),
    bairro CHAR(20) NOT NULL,
    cidade CHAR(50) NOT NULL,
    estado CHAR(20) NOT NULL
);

/* Adicionando um atributo na tabela com Alter*/
ALTER TABLE cadasrtocliente
ADD instagram VARCHAR(50);

/* AeXCLUINDO um atributo na tabela com Alter*/

ALTER TABLE cadasrtocliente
DROP COLUMN instagram;

/* Renomear um atributo na tabela com Alter*/
ALTER TABLE cadasrtocliente
CHANGE COLUMN compemento complemento CHAR(50);

/*Alterando o datatype de uma coluna*/
ALTER TABLE cadasrtocliente
MODIFY COLUMN nomecompleto VARCHAR(250) NOT NULL;

/*Drletando*/
DROP TABLE cadasrtocliente