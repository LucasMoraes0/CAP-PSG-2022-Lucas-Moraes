select * from Produto

SELECT SUM (Preco_Produto)
FROM Produto

select sum (Preco_Produto)
from Produto                            --SUM 
where Descricao_Produto like 'COCA%'

create table Colaborador (
  ID_Colaborador int not null identity (1,1) PRIMARY KEY,    -- CREATE TABLE > Nome_Tabela (
  Nome_Colaborador varchar (max) not null                    -- Nome_Colunas > especificações > 
)                                                            --
                                                             --  )
ALTER TABLE Colaborador
  ADD 
    Situacao BIT NULL DEFAULT 1,
    Data_Inclusao DATETIME NULL DEFAULT GETDATE()
  GO

ALTER TABLE Colaborador
ADD
	Cpf_Colaborador CHAR(14) NOT NULL,
	Sobrenome_Colaborador VARCHAR(MAX) NOT NULL,
	Endereco_Colaborador VARCHAR(MAX) NOT NULL,    -- ALTER TABLE > ADD = PARA ADCIONAR NOVAS COLUNAS (SEMPRE ESPECIFICAR OS DADOS COMO
	Telefone_Colaborador CHAR(14) NOT NULL,        -- (VARCHAR(MAX), NOT NULL, CHAR))
	Email_Colaborador VARCHAR(MAX) NULL
GO

ALTER TABLE Colaborador
	ALTER COLUMN                                   -- ALTER TABLE > ALTER COLUMN = PARA MODIFICAR UMA COLUNA
		Telefone_Colaborador VARCHAR(MAX) NULL
		GO

ALTER TABLE Colaborador
ADD                                                -- ALTER TABLE> ADD = PARA ADCIONAR UMA NOVA COLUNA
	Item_Produto VARCHAR(MAX) NOT NULL
	GO

ALTER TABLE Colaborador                            -- ALTER TABLE > DROP COLUMN = APAGAR COLUNA 
DROP COLUMN
	Item_Produto
	GO

DROP TABLE Colaborador                             -- DROP PARA APAGAR A TABELA >> DROP TABLE
GO
