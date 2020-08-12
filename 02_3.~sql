--2.3 - Using Substitution Variables

/*
Variáveis temporárias podem ser usadas em qualquer parte do select
1 - &: é descartada após a utilização
2 - &&: mantem o valor durante a seção
3 - também pode ser substituido o nome de colunas
*/

--1 - &: é descartada após a utilização
select * from funcionario where id = &temp;

--2 - &&: mantem o valor durante a seção
select * from funcionario where nome = '&&tempa'; --'' ou o usuário digita '' na janela

--3 - também pode ser substituido o nome de colunas ou mesmo uma expressão
select * from funcionario where &col = 1;




