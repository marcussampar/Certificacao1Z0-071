--Applying Rules of precedence for operators in an expression
--Operadores lógicos e suas precedências
--NOT: negação
--AND: duas condições atendidas
--OR: Qualquer uma das condições atendidas

--precedência de execução: NOT, AND OR
select * from funcionario;

--AND: ambas condições devem ser atendidas
select * from funcionario where nome = 'Marcus' and idade = 29;

--OR: qualquer das condições devem ser atendidas
select * from funcionario where nome = 'Marcus' or idade = 29;

--Precedência: NOT, AND, OR
select * from funcionario
where idade = 32 or nome = 'Marcus' and id = 1; --Filtra nome = 'Marcus'/id = 1, após isso aplica o OR
select * from funcionario
where idade = 32 or (nome = 'Marcus' and id = 1); --Mesmo resultado da busca anterior
select * from funcionario
where (idade = 32 or nome = 'Marcus') and id = 1; --Vai retornar apenas o funcionario com id = 1




