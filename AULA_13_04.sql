select * 
from Produto                                                        -- % antes para dizer que existe algo antes e depois para dizer que 
where Descricao_Produto like '%guaraná%' and ID_Categoria = 3       -- ainda tem algo depois
                                                                      -- LIKE = definir uma caracteristica (buscar por um nome) 
--ex 3                                                                -- ex: Where Descriçao_Coluna like '%exemplo%' ...

select 
  Categoria.ID_Categoria,                                           -- no SELECT a tabela sempre antecede a coluna como se pode ver <<<
  Categoria.Descricao_Categoria,
  Subcategoria.ID_Subcategoria,
  Subcategoria.Descricao_Subcategoria,
  Produto.ID_Produto,
  Produto.Descricao_Produto

from Produto

inner join Subcategoria on Subcategoria.ID_Subcategoria = Produto.ID_Subcategoria     -- a ordem hierarquica vem de baixo pra cima
inner join Categoria on Categoria.ID_Categoria = Produto.ID_Categoria                 -- CATEGORIA<<SUBCATEGORIA<<PRODUTO  
                                                                                      --no inner join sempre começa do menor para o maior
--ex 2

select 
 Categoria.ID_Categoria,
 Categoria.Descricao_Categoria,
 Subcategoria.ID_Subcategoria,
 Subcategoria.Descricao_Subcategoria,
  Produto.ID_Produto,
  Produto.Descricao_Produto

from Produto

inner join Subcategoria on Subcategoria.ID_Subcategoria = Produto.ID_Subcategoria
inner join Categoria on Categoria.ID_Categoria = Produto.ID_Categoria
where Descricao_Subcategoria like '%alcoól%'

--ex 3

select 
 cat.ID_Categoria as 'Código da Categoria',
 cat.Descricao_Categoria as 'Nome da Categoria',             -- ALIAS é para mudar o nome de exibição da tabela 
 sub.ID_Subcategoria as 'Código de Subcategoria',            -- EX: Subcategoria AS 'Código Sub' / O nome de exibição será "Código Sub"
 sub.Descricao_Subcategoria as 'Nome da Subcategoria',
 prod.ID_Produto 'Código Produto',
 prod.Descricao_Produto as 'Nome Produto'

from Produto as prod

inner join Subcategoria as sub on sub.ID_Subcategoria = prod.ID_Subcategoria
inner join Categoria as cat on cat.ID_Categoria = prod.ID_Categoria
where sub.Descricao_Subcategoria like '%suco%' 
and prod.Descricao_Produto like '%maguary%'


select count(*) as 'Quantidade de Produtos' from Produto     -- Select count(*) from TABELA - para visualizar a quantidade de itens de tal tabela

select top 10* from Produto                          -- Para visualizar a quantidade de item desejada

select 
ID_Produto, ID_Subcategoria, ID_Categoria, Descricao_Produto, Situacao, DataInclusao
from Produto

select 
ID_Produto, ID_Subcategoria, ID_Categoria, Descricao_Produto, Situacao, DataInclusao
from Produto
where ID_Categoria = 13 and Descricao_Produto like '%seca%'
order by Descricao_Produto                           -- o ultimo comando que tem que se dar | Serve para colocar a tabela em ordem alfabética

select count(*) as 'QUANTIDADE'
from Produto
where ID_Categoria = 13 
and Descricao_Produto like '%seca%'
order by Descricao_Produto  --o ultimo comando que tem que se dar



select 
  cat.Descricao_Categoria as 'Categoria Produto',
  sub.Descricao_Subcategoria as 'Descrição Produto',
  prod.Descricao_Produto as 'Nome Produto'
from Produto as prod

inner join Subcategoria as sub on sub.ID_Subcategoria = prod.ID_Subcategoria
inner join Categoria as cat on cat.ID_Categoria = prod.ID_Categoria
where Descricao_Categoria like 'bebidas' 
and Descricao_Subcategoria like 'refresco%' 
and Descricao_Produto like '%tang%'

select count(*) as 'Quantidade de Produtos'
from Produto
inner join Subcategoria on Subcategoria.ID_Subcategoria = Produto.Id_Subcategoria
inner join Categoria as cat on cat.ID_Categoria = Produto.ID_Categoria             -- igual ao de baixo porém sem o alias
where Descricao_Categoria like 'bebidas' 
and Descricao_Subcategoria like 'refresco%' 
and Descricao_Produto like '%tang%'


select count(*) as 'Quantidade de Produtos'
from Produto as prod

inner join Subcategoria as sub on sub.ID_Subcategoria = prod.ID_Subcategoria
inner join Categoria as cat on cat.ID_Categoria = prod.ID_Categoria
where Descricao_Categoria like 'bebidas' 
and Descricao_Subcategoria like 'refresco%' 
and Descricao_Produto like '%tang%'



select top 10

cat.Descricao_Categoria as 'Nome Categoria',
sub.Descricao_Subcategoria as 'Nome Subcategoria',
prod.Descricao_Produto as 'Nome Produto'

from Produto as prod
inner join Subcategoria as sub on sub.ID_Subcategoria = prod.ID_Subcategoria
inner join Categoria as cat on cat.ID_Categoria = prod.ID_Categoria
where prod.ID_Categoria = 4 and Descricao_Produto like '%adria%'



select count(*) as 'Quantidade'
 from Produto as prod
inner join Subcategoria as sub on sub.ID_Subcategoria = prod.ID_Subcategoria
inner join Categoria as cat on cat.ID_Categoria = prod.ID_Categoria
where prod.ID_Categoria = 4 and Descricao_Produto like '%adria%'
