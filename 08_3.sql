--Using concatenation operator, literal character strings, alternative quote operator, and the DISTINCT keyword

----> Operador de concatenação (||): 
--observar que ele apenas junta os resultado e sem alias nenhum no resultado
select nome || idade from funcionario;
select nome || idade nome_idade from funcionario;
select nome ||' '|| idade || ' anos' nome_idade from funcionario; --anos é chamado de literal
select 'teste' from funcionario; --teste é um valor fixo, um literal.

----> Usando o quote operator (Usado quando é necessário inserir ' em literais): 
--A sintaxe inicia com q' + caractere de suporte que deve estar no início e depois no fim + ' (SEMPRE ' e não '')

--select 'tes'te' from funcionario;--vai gerar erro
select q'[Te'ste de apostrofo]' from dual;-- quando for [{(, deve fechar no final
select q'{Te'ste de apostrofo}' from dual;-- quando for [{(, deve fechar no final
select q'xTe'ste de apostrofox' from dual;
select q'2Te'ste de apostrofo2' from dual;

----> Distinct: elimina os valores duplicados de uma consulta. 
--Será aplicado para TODAS colunas.
--Só pode ser colocado no INÍCIO da instrução select
--Remove a duplicidade dos registros retornados
select * from funcionario;
select distinct nome from funcionario;
select distinct nome, idade from funcionario; --pode ser aplicado em várias colunas ao mesmo tempo
select nome, distinct idade from funcionario; --erro




