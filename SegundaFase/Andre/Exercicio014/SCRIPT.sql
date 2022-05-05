DROP DATABASE IF EXISTS DBEXERCICIO014;

CREATE DATABASE DBEXERCICIO014;

USE DBEXERCICIO014;

CREATE TABLE IF NOT EXISTS USUARIO (
  ID_USUARIO INT NOT NULL AUTO_INCREMENT,
  LOGIN VARCHAR(45),
  SENHA VARCHAR(20),
  DT_DE_CADASTRO DATE,
  NOME VARCHAR(100),
  PRIMARY KEY (ID_USUARIO)
);

CREATE TABLE IF NOT EXISTS VIDEO (
  ID_VIDEO INT NOT NULL AUTO_INCREMENT,
  CATEGORIA VARCHAR(45),
  DT_DE_PUBLICACAO DATE,
  TITULO VARCHAR(100),
  PRIMARY KEY (ID_VIDEO)
  );
  
  CREATE TABLE IF NOT EXISTS ACESSAR (
    ID_USUARIO INT NOT NULL,
    ID_VIDEO INT NOT NULL,
    PRIMARY KEY (ID_USUARIO, ID_VIDEO),
    FOREIGN KEY (ID_USUARIO) REFERENCES USUARIO (ID_USUARIO),
    FOREIGN KEY (ID_VIDEO) REFERENCES VIDEO (ID_VIDEO)
    );