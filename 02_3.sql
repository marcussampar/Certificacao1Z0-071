--2.3 - Using Substitution Variables

/*
Vari�veis tempor�rias podem ser usadas em qualquer parte do select
1 - &: � descartada ap�s a utiliza��o
2 - &&: mantem o valor durante a se��o
3 - tamb�m pode ser substituido o nome de colunas
*/

--1 - &: � descartada ap�s a utiliza��o
select * from funcionario where id = &temp;

--2 - &&: mantem o valor durante a se��o
select * from funcionario where nome = '&&tempa'; --'' ou o usu�rio digita '' na janela

--3 - tamb�m pode ser substituido o nome de colunas ou mesmo uma express�o
select * from funcionario where &col = 1;




