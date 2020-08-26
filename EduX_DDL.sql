/*
	DDL - Data Definition Language
*/
--Criando DATABASE

CREATE DATABASE EduX;

USE EduX;

--Criando as tabelas DDL

CREATE TABLE Curso(
	IdCurso  INT PRIMARY KEY IDENTITY NOT NULL,
	Nome     VARCHAR(50)
);

CREATE TABLE Instituicao(
	IdInstituicao INT PRIMARY KEY IDENTITY NOT NULL,
	Nome          VARCHAR(100)NOT NULL,
	Logradouro    VARCHAR(100)NOT NULL,
	Bairro        VARCHAR(50),
	Numero        VARCHAR(50),
	Complemento   VARCHAR(50),
	CEP           VARCHAR(10)NOT NULL,
	UF            VARCHAR(2)
);

CREATE TABLE ProfessorUsuario(
	IdProfessorUsuario INT PRIMARY KEY IDENTITY NOT NULL,
	Nome     VARCHAR(50),
	Email    VARCHAR(100),
	Senha    VARCHAR(150),
	--Fk
	IdInstituicao  INT FOREIGN KEY REFERENCES Instituicao (IdInstituicao)
);

CREATE TABLE Turma(
	IdTurma INT PRIMARY KEY IDENTITY NOT NULL,
	Nome    VARCHAR(50),
	--Fk
	IdProfessorUsuario INT FOREIGN KEY REFERENCES ProfessorUsuario (IdProfessorUsuario),
	IdCurso            INT FOREIGN KEY REFERENCES Curso (IdCurso)
);

CREATE TABLE AlunoUsuario(
	IdAlunoUsuario INT PRIMARY KEY IDENTITY NOT NULL,
	Nome  VARCHAR(50),
	Email VARCHAR(100),
	Senha VARCHAR(150),
	--Fk
	IdTurma    INT FOREIGN KEY REFERENCES Turma    (IdTurma),
);

CREATE TABLE Categoria (
	IdCategoria INT PRIMARY KEY IDENTITY NOT NULL,
	Tipo        VARCHAR(25)
);
CREATE TABLE Objetivo(
	IdObjetivo INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao  VARCHAR(150),
	--Fk
	IdProfessorUsuario INT FOREIGN KEY REFERENCES ProfessorUsuario (IdProfessorUsuario),
	IdCategoria        INT FOREIGN KEY REFERENCES Categoria        (IdCategoria),

);

CREATE TABLE ObjetivoAluno(
	IdObjetivoAluno INT PRIMARY KEY IDENTITY NOT NULL,
	Nota DECIMAL(10,2) DEFAULT NULL,
	DataEntrega DATETIME,
	--Fk
	IdAlunoUsuario  INT FOREIGN KEY REFERENCES AlunoUsuario (IdAlunoUsuario),
	IdObjetivo		INT FOREIGN KEY REFERENCES Objetivo (IdObjetivo)
);

CREATE TABLE Post(
	IdPost INT PRIMARY KEY IDENTITY NOT NULL,
	Titulo VARCHAR (50),
	Descricao VARCHAR(100),
	--Fk
	IdProfessorUsuario INT FOREIGN KEY REFERENCES ProfessorUsuario (IdProfessorUsuario),
	IdAlunoUsuario INT FOREIGN KEY REFERENCES AlunoUsuario (IdAlunoUsuario)
);

ALTER TABLE ObjetivoAluno
ADD CONSTRAINT DF_ObjetivoAluno_Nota
DEFAULT 0 for Nota

-- DROP DATABASE EduX