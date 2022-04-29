DROP DATABASE IF EXISTS DBEXERCICIO011;

CREATE DATABASE DBEXERCICIO011;

USE DBEXERCICIO011;

CREATE TABLE IF NOT EXISTS VEICULO (
  ID_VEICULO INT NOT NULL AUTO_INCREMENT,
  PLACA_DO_VEICULO CHAR(8),
  ANO_DE_FABRICACAO INT,
  MODELO VARCHAR(45),
  MARCA VARCHAR(45),
  ID_DOCUMENTO INT NOT NULL,
  ESTADO CHAR(2),
  DATA_DE_REGISTRO DATE,
  CIDADE VARCHAR(45),
  PRIMARY KEY (ID_VEICULO, ID_DOCUMENTO)
  );