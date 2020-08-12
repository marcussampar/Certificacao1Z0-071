--2.2 - Limiting Rows Returned in a SQL Statement

/*
1 - Restrição de igualdade (=)
2 - Strings são case sensitives
3 - Null não entra nos resultados
4 - Restrição > / >= com numericos
5 - Restrição >= com strings
6 - Restrição < / <= 
7 - Restrição < com strings
8 - Operador diferente <> (Nulo também não entra nos resultados) 
9 - Espaços em branco em operadores
10 - Operador between com numéricos
11 - Operador between com strings
12 - Operador not between
13 - Operador in
14 - Operador like 
15 - Operador like com % 
16 - Operador like com _
17 - Operador like com _ e %
18 - Operador escape com o like
19 - Operador IS NULL e IS NOT NULL
20 - Fetch (Limita a qtde de registros da consulta)
21 - First/Next 
22 - Row/Rows - limita a qtde de linhas
23 - Percent rows only - restringe por porcentagem de linhas
24 - With ties - Caso exista registros duplicados, retorna mais valores que o especificado 
25 - Offset - Inicia os resultados a partir de determinada linha (valor negativo é considerado 0)
*/

--1 - Restrição de igualdade (=)
select * from funcionario where idade = 30;

--2 - Strings são case sensitives
select * from funcionario where nome = 'joana';
select * from funcionario where nome = 'Joana';

--3 - Null não entra nos resultados
--4 - Restrição > / >=
select * from funcionario where idade > 30;
select * from funcionario where idade >= 30;

--5 - Restrição > com strings
select * from funcionario where nome > 'Marcus'; --Usa a tabela ANSI

--6 - Restrição < / <= 
select * from funcionario where idade < 30;
select * from funcionario where idade <= 30;

--7 - Restrição < com strings
select * from funcionario where nome < 'Marcus'; 

--8 - Operador diferente <> (Nulo também não entra nos resultados) 
select * from funcionario where idade <> 30;
select * from funcionario where nome <> 'marcus';
select * from funcionario where nome <> 'Marcus';

--9 - Espaços em branco em operadores
select * from funcionario where nome < 'Marcus'; --Espaços em branco é o valor inicial da tabela ANSI.

--10 - Operador between com numéricos --Equivale a >= and <= 
select * from funcionario where idade between 10 and 28; --Sempre valor menor e depois maior
select * from funcionario where idade between null and null; --não vai trazer nada

--11 - Operador between com strings
select * from funcionario where nome between 'C' and 'K'; --Sempre valor menor e depois maior

--12 - Operador not between
select * from funcionario where idade not between 10 and 28; --Também não traz os valores nulos

--13 - Operador in --Equivale a or
select * from funcionario where idade in (32,50,29);
select * from funcionario where idade = 32 or idade =  50 or idade = 29; --mesmo resultado do in
select * from funcionario where idade in (32,50,29,null);--não traz o valor null
select * from funcionario where idade in (32,50,29,'A');--erro

--14 - Operador like 
select * from funcionario where nome = 'Marcus';
select * from funcionario where nome like 'Marcus'; --Mesmo efeito acima

--15 - Operador like com % 
select * from funcionario where nome like 'M%'; --0..N caracteres a frente
select * from funcionario where nome like '%a%';--Qualquer palavra com 0..n antes ou depois
select * from funcionario where nome like '%a%o%';--Qualquer palavra com 0..n que tenha A e depois O 

--16 - Operador like com _
select * from funcionario where nome like 'M_'; --1 caracteres a frente
select * from funcionario where nome like 'M__'; --2 caracteres a frente

--17 - Operador like com _ e %
select * from funcionario where nome like 'M_%';--Qualquer palavra que começe com M, tenha qualquer caractere após o M 
--e pode ou não ter mais alguma coisa a frente.

--18 - Operador escape com o like
select * from funcionario where nome like '%M\_%' escape '\';--Onde tiver o caractere a frente da barra, não será usado como
--caractere especial.

--19 - Operador IS NULL e IS NOT NULL: null existe pois operador igual não pode ser usado com null
select * from funcionario where idade is null;
select * from funcionario where idade = null;-- nao retorna nada
select * from funcionario where nome is null;
select * from funcionario where nome is not null;--Retorna inclusive ' ', mas não '';

--20 - Fetch (Limita a qtde de registros da consulta)
select * from funcionario order by id desc fetch first 2 rows only;

--21 - First/Next 
select * from funcionario order by id desc fetch first 2 rows only;
select * from funcionario order by id desc fetch next 2 rows only;

--22 - Row/Rows - limita a qtde de linhas
select * from funcionario order by id desc fetch first 2 rows only;
select * from funcionario order by id desc fetch first 2 row only;

--23 - Percent rows only- restringe por porcentagem de linhas
select * from funcionario order by id fetch first 20 percent rows only;--pode ser row tb

--24 - With ties - Caso exista registros duplicados, retorna mais valores que o especificado 
select * from funcionario order by nome desc fetch first 20 percent rows only;
select * from funcionario order by nome desc fetch first 20 percent rows with ties;

--25 - Offset - Inicia os resultados a partir de determinada linha (valor negativo é considerado 0)
select * from funcionario order by id fetch first 2 rows only;
select * from funcionario order by id offset 2 rows fetch first 2 rows only;
select * from funcionario order by id offset -2 rows fetch first 2 rows only;
















