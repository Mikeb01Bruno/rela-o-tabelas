CREATE DATABASE Empresa;

SHOW DATABASES;

use Empresa;

CREATE TABLE Empresa.clientes(
 id int auto_increment primary key,
 nome Varchar (10) not null,
 email varchar (255) not null unique, -- Unique serve para não haver repetição;
 telefone varchar (30) not null,
 Id_Endereco int,
foreign key(Id_Endereco) References Enderecos(Id)
 );
 
 CREATE TABLE Enderecos(
   Id int auto_increment primary key, 
   Logradouro varchar (255) not null,
   Cep varchar (8) not null,
   Numero varchar (10) not null,
   Complemento varchar (255),
   Cidade varchar (100)
 );
 
 