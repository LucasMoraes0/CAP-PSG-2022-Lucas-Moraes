--select * from funcionario
                                                                                   -- SELECT * > PESQUISA TODOS OS DADOS 	   
--select MATRICULA_FUNCIONARIO,	                                                   -- SELECT * FROM > ESPECIFICA O DADO A SER BUSCADO 
--NOME_FUNCIONARIO,	
--SOBRENOME_FUNCIONARIO
--From funcionario;
--go

--SELECT MATRICULA_FUNCIONARIO AS 'MATRICULA',
--TRIM(NOME_FUNCIONARIO) + ' ' + TRIM(SOBRENOME_FUNCIONARIO) AS 'NOME COMPLETO'    -- TRIM PARA SEPARAR PALAVRAS COM 'ESPAÇO' 
--FROM Funcionario                                                                 -- TRIM(coluna) + ' ' + TRIM(coluna) AS 'nome que se apresenta ao usuario' 
--WHERE ID_Funcionario = 9
--GO

--SELECT * FROM Funcionario
--WHERE ID_Funcionario = 4                                                         --USO DO WHERE
--GO

--SELECT
--TRIM(Nome_Funcionario) + ' ' + TRIM(Sobrenome_Funcionario)
--FROM Funcionario                                                                 --USO DO WHERE E USO DO OR 
--WHERE (Matricula_Funcionario = 1) OR (Matricula_Funcionario = 4)
