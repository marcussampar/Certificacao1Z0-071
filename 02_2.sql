--2.2 - Limiting Rows Returned in a SQL Statement

/*
1 - Restri��o de igualdade (=)
2 - Strings s�o case sensitives
3 - Null n�o entra nos resultados
4 - Restri��o > / >= com numericos
5 - Restri��o >= com strings
6 - Restri��o < / <= 
7 - Restri��o < com strings
8 - Operador diferente <> (Nulo tamb�m n�o entra nos resultados) 
9 - Espa�os em branco em operadores
10 - Operador between com num�ricos
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
25 - Offset - Inicia os resultados a partir de determinada linha (valor negativo � considerado 0)
*/

--1 - Restri��o de igualdade (=)
select * from funcionario where idade = 30;

--2 - Strings s�o case sensitives
select * from funcionario where nome = 'joana';
select * from funcionario where nome = 'Joana';

--3 - Null n�o entra nos resultados
--4 - Restri��o > / >=
select * from funcionario where idade > 30;
select * from funcionario where idade >= 30;

--5 - Restri��o > com strings
select * from funcionario where nome > 'Marcus'; --Usa a tabela ANSI

--6 - Restri��o < / <= 
select * from funcionario where idade < 30;
select * from funcionario where idade <= 30;

--7 - Restri��o < com strings
select * from funcionario where nome < 'Marcus'; 

--8 - Operador diferente <> (Nulo tamb�m n�o entra nos resultados) 
select * from funcionario where idade <> 30;
select * from funcionario where nome <> 'marcus';
select * from funcionario where nome <> 'Marcus';

--9 - Espa�os em branco em operadores
select * from funcionario where nome < 'Marcus'; --Espa�os em branco � o valor inicial da tabela ANSI.

--10 - Operador between com num�ricos --Equivale a >= and <= 
select * from funcionario where idade between 10 and 28; --Sempre valor menor e depois maior
select * from funcionario where idade between null and null; --n�o vai trazer nada

--11 - Operador between com strings
select * from funcionario where nome between 'C' and 'K'; --Sempre valor menor e depois maior

--12 - Operador not between
select * from funcionario where idade not between 10 and 28; --Tamb�m n�o traz os valores nulos

--13 - Operador in --Equivale a or
select * from funcionario where idade in (32,50,29);
select * from funcionario where idade = 32 or idade =  50 or idade = 29; --mesmo resultado do in
select * from funcionario where idade in (32,50,29,null);--n�o traz o valor null
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
select * from funcionario where nome like 'M_%';--Qualquer palavra que come�e com M, tenha qualquer caractere ap�s o M 
--e pode ou n�o ter mais alguma coisa a frente.

--18 - Operador escape com o like
select * from funcionario where nome like '%M\_%' escape '\';--Onde tiver o caractere a frente da barra, n�o ser� usado como
--caractere especial.

--19 - Operador IS NULL e IS NOT NULL: null existe pois operador igual n�o pode ser usado com null
select * from funcionario where idade is null;
select * from funcionario where idade = null;-- nao retorna nada
select * from funcionario where nome is null;
select * from funcionario where nome is not null;--Retorna inclusive ' ', mas n�o '';

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

--25 - Offset - Inicia os resultados a partir de determinada linha (valor negativo � considerado 0)
select * from funcionario order by id fetch first 2 rows only;
select * from funcionario order by id offset 2 rows fetch first 2 rows only;
select * from funcionario order by id offset -2 rows fetch first 2 rows only;
















