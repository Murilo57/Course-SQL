/*SQL Aula 11 Desafio Fundamentos SQL (FUNDAMENTOS)*/

1 - Quantos produtos temos cadastrado no sistema que custam mais que 1500 dolares? 

SELECT COUNT (listPrice)
FROM production.production
WHERE listPrice > 1500

Retorno 39 registros

2 - Quantas pessoas temos com o sobrenome que inicia com a letra P?

SELECT COUNT (LastName)
FROM Person.Person
WHERE LastName LIKE 'P%'

Retornado 1187 registros

3 - Em quantas cidades unicas estão cadastrados nossos clientes ?

SELECT