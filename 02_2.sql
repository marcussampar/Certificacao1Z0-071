--2.2 - Limiting Rows Returned in a SQL Statement

--Restri��o de igualdade
select * from funcionario where idade = 30;

--Restri��es de string s�o case sensitive
select * from funcionario where nome = 'joana';
select * from funcionario where nome = 'Joana';

--Observar que o null n�o entra nos resultados
--Restri��o > / >= 
select * from funcionario where idade > 30;
select * from funcionario where idade >= 30;
select * from funcionario where nome > 'Marcus'; --Usa a tabela ANSI

--Restri��o < / <= 
select * from funcionario where idade < 30;
select * from funcionario where idade <= 30;
select * from funcionario where nome < 'Marcus'; 

--Operador diferente <>. Observar que o nulo tb n�o entra
select * from funcionario where idade <> 30;
select * from funcionario where nome <> 'marcus';
select * from funcionario where nome <> 'Marcus';

--Espa�os em branco
insert into funcionario values(9,'',32);
insert into funcionario values(10,' ',32);
select * from funcionario where nome < 'Marcus'; --Espa�os em branco � o valor inicial da tabela ANSI.

--Operador between  --Equivale a >= and <= 
select * from funcionario where idade between 10 and 28; --Sempre valor menor e depois maior
select * from funcionario where idade between null and null; --n�o vai trazer nada
select * from funcionario where nome between 'C' and 'K'; --Sempre valor menor e depois maior
select * from funcionario where idade not between 10 and 28; --Tamb�m n�o traz os valores nulos

--Operador in --Equivale a or
select * from funcionario where idade in (32,50,29);
select * from funcionario where idade = 32 or idade =  50 or idade = 29; --mesmo resultado do in
select * from funcionario where idade in (32,50,29,null);--n�o traz o valor null
select * from funcionario where idade in (32,50,29,'A');--erro

--Operador like 
select * from funcionario where nome = 'Marcus';
select * from funcionario where nome like 'Marcus'; --Mesmo efeito acima
--Pode usar o caractere especial: % ou _
select * from funcionario where nome like 'M%'; --0..N caracteres a frente
insert into funcionario values (12,'MA',40);
insert into funcionario values (13,'M',41);
insert into funcionario values (14,'MAC',42);
select * from funcionario where nome like 'M_'; --1 caracteres a frente
select * from funcionario where nome like 'M__'; --2 caracteres a frente
select * from funcionario where nome like '%a%';--Qualquer palavra com 0..n antes ou depois
select * from funcionario where nome like 'M_%';--Qualquer palavra que come�e com M, tenha qualquer caractere ap�s o M 
select * from funcionario where nome like '%a%o%';--Qualquer palavra com 0..n que tenha A e depois O 
--e pode ou n�o ter mais alguma coisa a frente.
insert into funcionario values (15,'M_ARCUS',32);
select * from funcionario where nome like '%M\_%' escape '\';--Onde tiver o caractere a frente da barra, n�o ser� usado como
--caractere especial.

--Is null existe pois operador igual n�o pode ser usado com null
select * from funcionario where idade is null;
select * from funcionario where idade = null;-- nao retorna nada
select * from funcionario where nome is null;
select * from funcionario where nome is not null;--Retorna inclusive ' ', mas n�o '';

















