--8.4 - Using Arithmetic expressions and NULL values in the SELECT statement

----Express�es aritm�ticas
--Soma(+)
select idade, idade + 1, idade+idade from funcionario;

--Subtracao(-)
select idade, idade - 1, idade - idade from funcionario;

--Multiplicacao(*)
select idade, idade * 2 from funcionario;

--Divis�o(/)
select idade, idade/2 from funcionario;

--Em opera��es combinadas, segue a precedencia matem�tic */ e +- 
select idade, 1+idade*2 from funcionario

--Preced�ncia pode ser alterada com par�nteses.

----Valores nulos: valor vazio. � diferente de 0 ou valor em branco. 
--Expressoes aritmeticas com nulo, retorna nulo
select * from funcionario
select idade+1 from funcionario;--Reparar que se tiver idade nula, retorna nulo. (Mesmo comportamento para (+-*/)



