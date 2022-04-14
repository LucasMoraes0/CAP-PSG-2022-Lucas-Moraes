CREATE TABLE Exercicio (
	ID_Exercicio INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Nome_Exercicio VARCHAR(MAX) NOT NULL,
	Idade_Exercicio INT NULL,
	Nota_Exercicio DECIMAL (3,2) NULL,
	Situacao BIT NULL DEFAULT 1,
	DataInclusao DATETIME NULL DEFAULT GETDATE()
)

INSERT INTO Exercicio (Nome_Exercicio, Idade_Exercicio, Nota_Exercicio) 
VALUES
('Prova Matemática', 1, 9.8),
('Prova Biologia', 15, 8.7),
('Prova Português', 25, 7.8),
('Prova Geografia', 3, 2.5),
('Prova Artes', 35, 9),
('Prova Ed.Fís', 4, 9.8),
('Prova Liv', 45, 9),
('Prova Ciência', 5, 5.75),
('Prova Informática', 55, 9.7),
('Prova Matemática 2', 6, 9.8),
('Prova Biologia 2', 65, 8.1),
('Prova Ens.Religioso', 7, 9.9)

select * from Exercicio
GO

SELECT * 
FROM Exercicio
WHERE Idade_Exercicio BETWEEN 18 AND 23      -- BETWEEN = ENTRE INTERVALOS ( entre x e X)
GO

SELECT * 
FROM Exercicio
WHERE Idade_Exercicio > 18 
GO

ALTER TABLE Exercicio
	ALTER COLUMN 
		Nota_Exercicio DECIMAL (7,2)
GO

ALTER TABLE Exercicio
	ALTER

			SELECT * 
			FROM Exercicio

UPDATE Exercicio
	SET Situacao = 1
		WHERE Idade_Exercicio < 18
GO

			SELECT * FROM Exercicio
			WHERE Nota_Exercicio < 6

-- Ex. ALTERA A IDADE DE QUEM TEM NOTA ABAIXO DE 6 PARA 15

UPDATE Exercicio
	SET Idade_Exercicio = 15
		WHERE Nota_Exercicio < 6
		GO






--Ex. A) ADCIONAR COLUNA DE ESTADO ATUAL COM CHAR(1)
	  
	--B) ALTERAR TODOS OS REGISTROS CUJA NOTA SEJA ABAIXO DE 6, PARA ESTADO ATUAL REPROVADO

	--C) ALTERAR TODOS OS REGISTROS CUJA NOTA SEJA  IGUAL OU MAIOR A 6, PARA ESTADO ATUAL APROVADO

ALTER TABLE Exercicio
	ADD Estado_Atual CHAR(1) NULL DEFAULT 'A'
	GO

UPDATE Exercicio
	SET Estado_Atual = 'R'
	WHERE Nota_Exercicio < 6
	GO

UPDATE Exercicio
	SET Estado_Atual = 'A'
	WHERE Nota_Exercicio >= 6
	GO

