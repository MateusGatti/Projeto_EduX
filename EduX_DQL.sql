/* 

DQL - Data Query Language

*/
USE EduX;

-- Selecionar todos os dados da tabela
SELECT * FROM AlunoUsuario;
SELECT * FROM Categoria;
SELECT * FROM Curso;
SELECT * FROM Instituicao;
SELECT * FROM Objetivo;
SELECT * FROM ObjetivoAluno;
SELECT * FROM Post;
SELECT * FROM ProfessorUsuario;
SELECT * FROM Turma;

-- Selecionar todos os alunos em ordem decrescente pela nota
SELECT * FROM ObjetivoAluno ORDER BY Nota DESC ;

-- Selecionar todos os alunos da turma em questão
SELECT * FROM AlunoUsuario WHERE IdTurma = 1;

-- Selecionar o nome da turma, do professor e do curso
SELECT Turma.Nome AS 'Nome Turma', ProfessorUsuario.Nome AS 'Nome Professor', Curso.Nome AS 'Nome Curso' 
	FROM Turma 
	INNER JOIN ProfessorUsuario ON Turma.IdProfessorUsuario = ProfessorUsuario.IdProfessorUsuario 
	INNER JOIN Curso ON Turma.IdCurso = Curso.IdCurso;

-- Selecionar a Data de entrega no padrão americano
SELECT IdObjetivoAluno, Nota, CONVERT (char, ObjetivoAluno.DataEntrega, 110) AS DataEntrega,IdAlunoUsuario FROM ObjetivoAluno;

-- Selecionar a Data de entrega no padrão americano
SELECT * FROM ObjetivoAluno WHERE IdAlunoUsuario = 1;

-- Utilizando Function para mostrar Id e nome do Aluno e Descricao do objetivo
CREATE FUNCTION Mostrar_IdAluno(@IdAlunoUsuario INT)
RETURNS TABLE 
AS 
RETURN SELECT AlunoUsuario.IdAlunoUsuario,AlunoUsuario.Nome, Objetivo.Descricao  AS 'Descricao Objetivo'
FROM AlunoUsuario,Objetivo;

SELECT * FROM Mostrar_IdAluno(1)

--DROP FUNCTION Mostrar_IdAluno




