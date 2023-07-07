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

SELECT COUNT (DISTINCT(CITY))
FROM person.Address

Retornado 575 registros

4 - Quais são as cidades únicas que temos cadastrados em nosso sistema?

SELECT DISTINCT CITY
FROM person.Addres

Retornado 575 registros

5 - Quantos produtos vermelhos tem preco entre 500 a 1000 dolares 

SELECT COUNT(*)
FROM Production.Product
WHERE color = 'RED' and ListPrice > 500 and ListPrice < 1000

Retornado 11 registros.

6 - Quantos produtos cadastrados tem a palavra 'road' no nome delas?

SELECT COUNT(*)
FROM Production.Product
WHERE NAME LIKE '%road%'

Retornado 103 registros

/*SQL Aula 12 MIN MAX SUM AVG*/

Funções de agregação basicamente agregam ou combinam dados de uma tabela em 1 resultado só

-- SUM --
-- Ira somar todos valores daquela coluna
SELECT SUM (ListPrice)
FROM Sales.SalesOrderDetail

-- MIN 
-- Ira retornar o menor valor da coluna
SELECT MIN (ListPrice)
FROM Sales.SalesOrderDetail

-- MAX
-- Ira retornar o maior valor da coluna
SELECT MAX (ListPrice)
FROM Sales.SalesOrderDetail

-- AVG
-- Ira retornar a média dos valores da coluna
SELECT AVG (ListPrice)
FROM Sales.SalesOrderDetail

/* SQL AULA 13 GROUP BY + DESAFIO (INTERMEDIARIOS)*/
-- GROUP BY
- O GROUP BY basicamente divide o resultado da sua pesquisa em grupos
- Para cada grupo você pode aplicar um função de agregação, por exemplo:
    -calcular a soma de itens
    -contar o numero de itens naquele grupo

-- Seleciona os IDs, soma os preços unitarios e agrupa os registros com os mesmo IDs e soma todos os Preços unitarios de cada ID caso se repita(agrupa)
SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

-- Vamos dizer qeu eu quero saber quantos cada produto foi vendido até hoje

SELECT ProductID, Count(ProductID) as 'CONTAGEM'
FROM Sales.SalesOrderDetail
Group by ProductID

-- Vamos se dizer que eu quero saber quantos nomes de cada nome temos cadastrado em nosso banco de dados

SELECT FirstName, COUNT(FirstName) AS "Contagem"
FROM Person.Person
GROUP BY FirstName

-- Na tabela production.product eu quero saber a média de preço para os produtos que são pratas(silver)
 SELECT Color, AVG(ListPrice) AS 'MEDIA'
FROM production.product
WHERE Color = 'Silver'
GROUP BY Color

--- Desafio 1 ---
Eu preciso saber quantas pessoas tem o mesmo MiddleName agrupadas por o MiddleName

SELECT MiddleName, COUNT(MiddleName) AS 'Contagem'
FROM Person.Person
GROUP BY MiddleName

Retornado 71 registros

--- Desafio 2 ---
Eu preciso saber em média qual é a quantidade(quantity) que cada produto é vendido na loja

SELECT ProductID, COUNT(OrderQty)
FROM Sales.SalesOrderDetail
GROUP BY ProductID