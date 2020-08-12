--2.5 - Sorting Data

/*
1 - Ordena o resultado da consulta
2 - Crescente (ASC) (Default)
3 - Descrescente (DESC)
4 - NULLS LAST: nulos aparecem no fim da listagem (Default)
5 - NULLS FIRST: nulos aparecem no inicio da lista
6 - Alias de colunas podem ser usados no order by
7 - Posi��o numeral da coluna pode ser usada no order by
8 - � poss�vel incluir colunas no order by que n�o est�o no select
9 - � poss�vel mesclar ordena��es na ordena��o
*/

--1 - Ordena o resultado da consulta
select * from funcionario order by idade;

--2 - Crescente (ASC) (Default)
select * from funcionario order by idade asc;-- default

--3 - Descrescente (DESC)
select * from funcionario order by idade desc;

--4 - NULLS LAST: nulos aparecem no fim da listagem (Default)
select * from funcionario order by idade desc nulls last;

--5 - NULLS FIRST: nulos aparecem no inicio da lista
select * from funcionario order by idade asc nulls first;

--6 - Alias de colunas podem ser usados no order by
select idade idd from funcionario order by idd;

--7 - Posi��o numeral da coluna pode ser usada no order by
select * from funcionario order by 3;

--8 - � poss�vel incluir colunas no order by que n�o est�o no select
select nome from funcionario order by idade;

--9 - � poss�vel mesclar ordena��es na ordena��o
select * from funcionario order by 2 asc, 3 desc;



