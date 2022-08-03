CREATE DATABASE db_redesocial;

USE db_redesocial;

CREATE TABLE tb_usuarios(
	Id INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(255) NOT NULL,
	Usuario VARCHAR(255) NOT NULL,
	Senha VARCHAR(255) NOT NULL,
	url_foto VARCHAR(255));

CREATE TABLE tb_grupos(
	Id INT PRIMARY KEY IDENTITY,
	Grupo VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	url_imagem VARCHAR(255) NOT NULL,
	FK_Criador INT NOT NULL,
	FOREIGN KEY (FK_Criador) REFERENCES tb_usuarios (Id));

CREATE TABLE tb_postagens(
	Id INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR(255) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	url_imagem VARCHAR(255) NOT NULL,
	Data_Postagem DATE NOT NULL,
	FK_Criador INT NOT NULL,
	FK_Grupo INT NOT NULL,
	FOREIGN KEY (FK_Criador) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_Grupo) REFERENCES tb_grupos (Id));

CREATE TABLE tb_inscritos(
	FK_Usuario INT NOT NULL,
	FK_Grupo INT NOT NULL,
	Data_Inscricao DATE NOT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_Grupo) REFERENCES tb_grupos (Id));