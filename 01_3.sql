--ERD: Entity RelationShip Diagram
/*
Esquema de relacionamento entre as entidades do banco.
Atentar-se a cardinalidade das entidades envolvidas.
1:N, N:N

1:N
1 cabe�alho tem v�rios itens, sendo a FK sempre do lado da cardinalidade muitos

N:N
Conceitualmente, dever� ter uma tabela intermedi�ria fazendo o relacionamento entre as duas tabelas, 
sendo nessa tabela tendo as duas FKS de ambas tabelas, sendo que passa a existir um relacionamento 
1:N para cada uma das tabelas envolvidas com essa intermedi�ria. 

PK: Sempre deve ser �nica e n�o pode ser nula.
FK: Pode duplicar e pode ser nula. 
*/
