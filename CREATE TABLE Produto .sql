CREATE TABLE Produto (
	ID_Produto INT NOT NULL IDENTITY(1,1),
	ID_Subcategoria INT NOT NULL,
	ID_Categoria INT NOT NULL,
	Descricao_Produto VARCHAR(MAX) NOT NULL,
	Situacao BIT NULL DEFAULT 1,
	DataInclusao DATETIME NULL DEFAULT GETDATE(),
	CONSTRAINT Pk_produto PRIMARY KEY (ID_Produto),
	CONSTRAINT Fk_subcategoria_produto FOREIGN KEY (ID_Subcategoria) 
	  REFERENCES Subcategoria(ID_Subcategoria)
)
GO
