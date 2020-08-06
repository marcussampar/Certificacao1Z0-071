--8.1 - Using Column aliases 

/*Trata-se de um apelido para a coluna ou para a tabela*/

--Primeiro tipo de alias na coluna. O AS � opicional
select nome from funcionario;
select nome as nome_funcionario, nome nome_funcionario2 from funcionario;

--Regras gerais do alias:  N�o � case sensitive, deve ser UMA palavra e menor que 30 caracteres (depende da vers�o do oracle).
select nome 2 from funcionario; --erro
select nome nome funcionario from funcionario;--erro

--Alias com Aspas duplas: � case sensitive, permite colocar espa�o
select nome "nome funcionario" from funcionario;--agora permite

--Aplicando alias na coluna
select f.nome from funcionario f;
select f.nome from funcionario f, funcionario c;
select f.nome from funcionario f, funcionario f;-- erro: N�o permite mesmo alias para tabelas diferentes
select nome from funcionario f, funcionario c;-- erro: n�o sabe de qual tabela busca a coluna nome

--Alias podem ser usadas no where
select f.nome from funcionario f where f.idade = 32;

--Alias de colunas n�o podem ser usados no where
select nome nom from funcionario where nom = 'Marcus';--Erro devido a precedencia de execu��o no select





