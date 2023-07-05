05/07/2023

Essas anotações e exercicios seguem o curso de SQL 2022 do canal Dev Aprender, link:  https://www.youtube.com/watch?v=G7bMwefn8RQ&t=763s
Banco de dados usado é um banco didatico fornecido pelo Jonathan do canal Dev Aprender

# Desafio 1 #
A EQUIPE DE MARKETING PRECISA DE FAZER UMA PESQUISA SOBRE NOMES MAIS COMUNS DE SEUS CLIENTES E PRECISA DO NOME E SOBRENOME DE TODOS OS CLIENTES QUE ESTÃO CADASTRADOS NO SISTEMS.

first name, last name

//Seleciona as colunas firstName e lastName da tabela person.Person
SELECT firstName,lastName
From person.Person

retornado 19.000 registros

//Seleciona todos os firstName distintos da tabela person.Person
SELECT DISTINCT firstName
From person.Person

retornado 1.018 registros

# Desafio 2 #

QUANTOS NOMES SOBRENOMES UNICOS TEMOS EM NOSSA TABELA PERSON.PERSON?

---- Resposta do desafio ----
SELECT DISTINCT lastName
FROM person.Person

Retornado 1.206 registros

---- Where ----
Operador   -   Descrição
=			   IGUAL
>			   MAIOR QUE
<              MENOR QUE
>=             MAIOR QUE OU IGUAL
<=             MENOR QUE OU IGUAL
<>             DIFERENTE DE
AND            OPERADOR LÓGICO E
OR             OPERADOR LÓGICO OU 