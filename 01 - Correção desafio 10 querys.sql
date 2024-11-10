#CORREÇÃO DE EXERCÍCIOS PRÁTICOS
#NÚMERO 01
select count(*) as qtde, cidade
from tbl_endereco
group by cidade;

#NÚMERO 02
select count(*) as qtde, bairro
from tbl_endereco
group by bairro
order by 1 desc
limit 5;

#NÚMERO 03
select * from tbl_cliente
where year(data_nasc) between 1960 and 1999;

#NÚMERO 04
select count(*) as qtde, month(data_nasc) mes
from tbl_cliente
group by 2
order by 1 desc;

#NÚMERO 05
select count(*) as qtde, month(data_pedido)
from tbl_pedido
group by 2
order by 2 desc;

#NÚMERO 06
select min(i_valor) as valor_minimo
 from tbl_itempedido;
 
#NÚMERO 07
select sum(qtde) as qtde, i_cod_produto
from tbl_itempedido
group by 2
order by 1  desc;

#NÚMERO 08
select sum(estoque_atual) as estoque_atual
from tbl_produto;

#NÚMERO 09
select avg(estoque_atual) as media_estoque
from tbl_produto;

#NÚMERO 10
select sum(estoque_atual * valor) as valor_estoque
from tbl_produto;
