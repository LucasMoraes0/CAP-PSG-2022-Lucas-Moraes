CREATE TABLE Subcategoria (
	ID_Subcategoria INT NOT NULL IDENTITY(1,1),
	ID_Categoria INT NOT NULL,
	Descricao_Subcategoria VARCHAR(MAX) NOT NULL,
	Situação BIT NULL DEFAULT 1,
	Data_Inclusão DATETIME NULL DEFAULT GETDATE(),
	CONSTRAINT PK_Subcategoria PRIMARY KEY (ID_Subcategoria),
	CONSTRAINT fk_subcategoria_categoria FOREIGN KEY (ID_Categoria)
	     REFERENCES Categoria(ID_Categoria)
)
GO
