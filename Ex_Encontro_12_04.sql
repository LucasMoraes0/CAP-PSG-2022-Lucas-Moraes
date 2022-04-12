   -- EX 1: SELECIONAR TODAS AS SUBCATEGORIAS CUJA A CATEGORIA SEJA IGUAL A 5

--SELECT * FROM Subcategoria
--WHERE ID_Categoria = 5
--GO

   -- EX 2: SELECIONAR AS COLUNAS ID_Subcategoria, ID_Categoria, Descricao_Subcategoria CUJA A CATEGORIA SEJA IGUAL A 8

--SELECT ID_Subcategoria, ID_Categoria, Descricao_Subcategoria---FROM Subcategoria
--WHERE ID_Categoria = 8
--GO
 
   -- EX 3: SELECIONAR A COLUNA Desricao_Subcategoria NA TABELA SUBCATEGORIA CUJA CATEGORIA SEJA IGUAL A 12 E A SUBCATEGORIA IGUAL A 72

-- SELECT Descricao_Subcategoria					
-- FROM Subcategoria
-- WHERE (ID_Categoria = 12) AND (ID_Subcategoria = 72)
-- GO

   -- EX 4: SELECIONAR AS COLUNAS ID_SUBCATEGORIA, ID_CATEGORIA E DESCRICAO_SUBCATEGORIA CUJA CATEGORIA SEJA IGUAL A 15

--SELECT ID_Subcategoria, ID_Categoria, Descricao_Subcategoria
--FROM Subcategoria
--where (ID_Categoria) = 15 or (ID_Categoria) = 10
--go

   --EX 5:

--select 
--   Categoria.ID_Categoria,
--   Categoria.Descricao_Categoria,
--   Subcategoria.ID_Subcategoria,
--   Subcategoria.Descricao_Subcategoria

-- from Subcategoria
-- inner join Categoria on Categoria.ID_Categoria = Subcategoria.ID_Categoria
-- where Subcategoria.ID_Categoria = 5

   --EX 6: LISTAR OS SEGUINTES CAMPOS: DESCRIÇÃO_CATEGORIA
   --                                  DESCRICAO_SUBCATEGORIA  >> PARA AS CATEGORIAS IGUAIS A 3,5,7,9
   --								  SITUACAO_SUBCATEGORIA


--select 
  
--  Categoria.Descricao_Categoria,
--  Subcategoria.Descricao_Subcategoria,
--  Subcategoria.Situação

--from Subcategoria
--inner join Categoria on Categoria.ID_Categoria = Subcategoria.ID_Categoria
--where (Subcategoria.ID_Categoria) in (3,5,7,9)

   --

   --select 
   --    Produto.ID_Subcategoria,
	  -- Categoria.Descricao_Categoria,
	  -- Subcategoria.Descricao_Subcategoria,
	  -- Produto.ID_Produto,
	  -- Produto.Descricao_Produto
   --from Produto
   --inner join Subcategoria on Subcategoria.ID_Subcategoria = Produto.ID_Subcategoria
   --inner join Categoria on Categoria.ID_Categoria = Produto.ID_Categoria
   --where Produto.ID_Categoria = 1
   --go
