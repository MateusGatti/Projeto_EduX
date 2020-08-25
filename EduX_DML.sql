/* 

DML - Data Manipulation Language

*/
USE EduX;
-- Inserindo valores a tabela curso
INSERT INTO Curso (Nome) VALUES
	('Desenvolvimento'),
	('Redes'),
	('Multimidia');

-- Inserindo valores a tabela instituicao
INSERT INTO Instituicao (Nome, Logradouro, Bairro, Numero, Complemento, CEP, UF) VALUES
	('SENAI de Informatica', 'Alameda Barão de Limeira', 'Santa Cecilia', '539', '', '01202001', 'SP');

-- Inserindo valores a tabela Categoria
INSERT INTO Categoria (Tipo) VALUES
	('Critico'),
	('Desejavel'),
	('Oculto');

-- Inserindo valores a tabela ProfessorUsuario
INSERT INTO ProfessorUsuario (Email, Senha, Nome, IdInstituicao) VALUES
	('Paulo@senai.com', '321312312', 'Paulo Brandao', '1');

-- Inserindo valores a tabela Turma
INSERT INTO Turma (Nome, IdProfessorUsuario, IdCurso) VALUES
	('2S2020S3', '1', '1');

-- Inserindo valores a tabela AlunoUsuario
INSERT INTO AlunoUsuario (Email, Nome, Senha, IdTurma) VALUES
	('Gatti@gmail.com', 'Mateus Gatti', '13212123132', '1');

-- Inserindo valores a tabela Post
INSERT INTO Post (Titulo, Descricao, IdProfessorUsuario, IdAlunoUsuario) VALUES
	('Lição de banco de dados', 'Preciso de ajuda nessa atividade', '1' , '1');

-- Inserindo valores a tabela ObjetivoAluno
INSERT INTO ObjetivoAluno (DataEntrega, IdAlunoUsuario) VALUES
	('2020-09-12T00:00:00', '2'),('2020-09-12T00:00:00', '1'),('2020-09-12T00:00:00', '1');
-- Com Nota
INSERT INTO ObjetivoAluno (Nota,DataEntrega, IdAlunoUsuario) VALUES
	('3','2020-09-12T00:00:00', '1'),('10','2020-09-12T00:00:00', '1'),('5','2020-09-12T00:00:00', '1') ;

-- Inserindo valores a tabela Objetivo
INSERT INTO Objetivo (Descricao, IdProfessorUsuario, IdObjetivoAluno, IdCategoria) VALUES
	('Identificar as características de banco de dados relacionais e não-relacionais', '1', '1', '1');