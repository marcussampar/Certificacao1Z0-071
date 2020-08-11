--8.4 - Using Arithmetic expressions and NULL values in the SELECT statement

----Expressões aritméticas
--Soma(+)
select idade, idade + 1, idade+idade from funcionario;

--Subtracao(-)
select idade, idade - 1, idade - idade from funcionario;

--Multiplicacao(*)
select idade, idade * 2 from funcionario;

--Divisão(/)
select idade, idade/2 from funcionario;

--Em operações combinadas, segue a precedencia matemátic */ e +- 
select idade, 1+idade*2 from funcionario

--Precedência pode ser alterada com parênteses.

----Valores nulos: valor vazio. É diferente de 0 ou valor em branco. 
--Expressoes aritmeticas com nulo, retorna nulo
select * from funcionario
select idade+1 from funcionario;--Reparar que se tiver idade nula, retorna nulo. (Mesmo comportamento para (+-*/)



