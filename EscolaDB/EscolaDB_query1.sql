SELECT C.nome_curso, AVG(M.nota) as media_nota, SUM(M.faltas) as total_faltas, COUNT(A.id_aluno) as num_alunos
FROM Cursos as C
JOIN Matriculas as M ON C.id_curso=M.id_curso
JOIN Alunos as A ON M.id_aluno=A.id_aluno
GROUP BY nome_curso
HAVING media_nota>7
ORDER BY num_alunos DESC;