05/07/2023

Essas anotações e exercicios seguem o curso de SQL 2022 do canal Dev Aprender, link:  https://www.youtube.com/watch?v=G7bMwefn8RQ&t=763s
Banco de dados usado é um banco didatico fornecido pelo Jonathan do canal Dev Aprender

----- Desafio 1 -----
A EQUIPE DE MARKETING PRECISA DE FAZER UMA PESQUISA SOBRE NOMES MAIS COMUNS DE SEUS CLIENTES E PRECISA DO NOME E SOBRENOME DE TODOS OS CLIENTES QUE ESTÃO CADASTRADOS NO SISTEMS.

first name, last name

/*Seleciona as colunas firstName e lastName da tabela person.Person*/
SELECT firstName,lastName
From person.Person

retornado 19.000 registros

/*Seleciona todos os firstName distintos da tabela person.Person*/
SELECT DISTINCT firstName
From person.Person

retornado 1.018 registros

----- Desafio 2 -----

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

/*Seleciona todos os registros da tabela person.Person mas filtrando o ultimo nome igual a 'miller'*/
SELECT *
FROM person.Person
WHERE lastName = 'miller'

Retornado 87 registros

/*Seleciona todos os registros da tabela person.Person mas filtrando o ultimo nome igual a 'miller' E o primeiro igual a 'anna'*/
SELECT *
FROM person.Person
WHERE lastName = 'miller' and firstName = 'anna'

Retornado 1 registro

/*Seleciona todos os registros da tabela production.Product filtrados pela cor azul ou preta*/
SELECT *
FROM production.Product
WHERE color = 'blue' or color = 'black'

Retornado 119 registros

/*Seleciona todos os registros da tabela production.Product com o preço de tabela maior que 1500*/
SELECT *
FROM production.Product
WHERE ListPrice > 1500

Retornado 39 registros

/*Seleciona todos os registros da tabela production.Product com o preço de tabela maior que 1500 e menores que 5000*/
SELECT *
FROM production.Product
WHERE ListPrice > 1500 and ListPrice < 5000

Retornado 39 registros

/*Seleciona todos os registros da tabela production.Product com as cores diferentes de vermelho*/
SELECT *
FROM production.Product
WHERE color <> 'red'

Retornado 218 registros

----- Desafio 3 -----
A equipe de produção de produtos precisa do nome de todas as peças que pesam mais que 500kg mas não mais que 700kg para inspeção

Resposta:
SELECT *
FROM production.Product
WHERE Weight > 500 and Weight < 700

Retornado 4 registros

----- Desafio 4 -----
Foi pedido pelo marketing uma relação de todos os empregrados(employees) que são casados (single = solteiro, married = casado) e são assalariados(salaried)

Resposta:
SELECT *
FROM HumanResources.Employee 
WHERE MaritalStatus = 'M' and SalariedFlag = 1

Retornado 28 registros

----- Desafio 5 -----
Um usuario chamado Peter Krebs está devendo um pagamento, consiga o email dele para que possamos enviar uma cobrança!
(Você vai ter que usar a tabela person.person e depois a tabela person.emailaddress)

SELECT *
FROM person.Person
WHERE firstName = 'Peter' and lastName = 'Krebs'

Retornado ID do usuario(BusinessEntityID) = 26

SELECT * 
FROM person.EmailAddress
WHERE BusinessEntityID = 26

email do usuario = peter0@adventure-works.com

---- COUNT ----
/*Conta a quantidade de registros em todas as colunas*/
SELECT COUNT(*)
FROM TABELA

Retornado 19972 registros

/*Conta a quantidade de registros com o firstName diferente*/
SELECT COUNT(DISTINCT firstName)
FROM TABELA

retornado 1018 registros

----- Desafio 6 -----
Eu quero saber quantso produtos temos cadastrados em nossa tabela de produtos
(production.product)

Resposta:
SELECT COUNT (*)
FROM production.product

Retornado 504 registros

----- Desafio 7 -----
Eu quero saber quantos tamanhos de produtos temos cadastrados nessa tabela

SELECT COUNT (*)
FROM production.product
WHERE Size is not null

Retornado 211 registros

---- TOP ----
/*TOP organiza os registros do topo (inicio), exemplo abaixo os 10 primeiros registros*/
SELECT TOP 10 *
FROM TABELA

/*TOP PERCENT é usado para ao inves de trazer os 10 primeiros registros ele busca os 10% primeiros */
SELECT TOP 10 PERCENT *
FROM TABELA

---- ORDER BY ----
/*O order By significa Ordenar por... Como o exemplo abaixo ele ira ordernar por ordem alfabetica os registros da coluna NOME, podendo usar asc = ordem crescente ou desc = ordem decrescente*/
SELECT *
FROM TABELA
ORDER BY NOME

----- Desafio 8 -----
Obter o ProductId dos 10 produtos mais caros cadastrados no sistema, listando do mais caro para o mais barato

Resposta:
SELECT TOP 10 *
FROM Production.Product
ORDER BY ListPrice DESC

----- Desafio 9 -----
Obter o nome e numero do produto dos produtos que tem o ProduictID entre 1~4

Resposta: 
SELECT TOP 4  Name, ProductNumber
FROM Production.Product
ORDER BY ProductID

---- Between ----
O between é usado para encontrar valor entre um valor minimo e valor maximo

Ex sintaxe:
valor BETWEEN minimo AND maximo

valor >= minimo AND valor <= máximo

SELECT *
FROM Production.Product
WHERE ListPrice between 1000 and 1500

Retornado 47 registros

/*Selecionar data de cadastro dos empregados de 2009 a 2010*/
SELECT *
FROM HumanResources.Employee
WHERE HireDate between '01-01-2009' and '01-12-2010'
Order By HireDate

Retornado 153 registros

---- IN ----
Nós usamos o operador IN junto com o WHERE, para verificar se um valor correspondem com qualquer valor passado na lista de valores.

Exemplo:
/*Selecionar ID 2, 7 e 13*/
SELECT *
FROM person.Person
WHERE BusinessEntityID IN (2, 7, 13)