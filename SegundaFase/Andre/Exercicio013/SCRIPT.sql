DROP DATABASE IF EXISTS DBEXERCICIO013;

CREATE DATABASE DBEXERCICIO013;

USE DBEXERCICIO013;

CREATE TABLE IF NOT EXISTS PEDIDO (
  ID_PEDIDO INT NOT NULL AUTO_INCREMENT,
  DATA_DO_PEDIDO DATE,
  HORA_DO_PEDIDO TIME,
  NOME_DO_CLIENTE VARCHAR(100),
  PRIMARY KEY (ID_PEDIDO)
  );

CREATE TABLE IF NOT EXISTS PRODUTO (
  ID_PRODUTO INT AUTO_INCREMENT,
  PRECO DECIMAL(8,2),
  NOME VARCHAR(45),
  ID_PEDIDO INT,
  PRIMARY KEY (ID_PRODUTO),
FOREIGN KEY (ID_PEDIDO) REFERENCES PEDIDO (ID_PEDIDO));