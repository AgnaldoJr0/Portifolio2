CREATE DATABASE loja
default charset = utf8;

use loja;
 create table ContaReceber(
   id INT primary key not null auto_increment,
   client_ID INT not null,
   foreign key(client_ID) references cliente(id),
   FaturaVendaID INT,
   DataConta DATE not null,
   DataVencimento DATE not null,
   Valor DECIMAL(18,2) not null,
   Situação ENUM('Conta registrada','Conta cancelada','Conta paga')not null
 );
 
  create table cliente(
   id INT primary key not null auto_increment,
   Nome VARCHAR(80) not null,
   CPF VARCHAR(11) not null,
   Celular CHAR(11),
   EndLogradouro VARCHAR(100) not null,
   EndNumero VARCHAR(10) not null,
   EndMunicipio INT not null,
   EndCEP CHAR(8),
   Municipio_ID INT, 
   foreign key(Municipio_ID) references municipio(id)
  );
  
   create table Municipio(
   id INT primary key not null auto_increment,
   Estado_ID INT, 
   foreign key(Estado_ID) references Estado(id),
   Nome VARCHAR(80) not null,
   CodIBGE INT not null
   );
   
   create table Estado(
   id INT primary key not null auto_increment,
   Nome VARCHAR(80) not null,
   UF VARCHAR(2) not null
   );
   
   SHOW TABLES;
   