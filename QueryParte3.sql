/* SQL AULA 15 AS + DESAFIOS (INTERMEDIÁRIO)*/

1) Encontrar o FirstName e LastName person.Person

SELECT TOP 10 FirstName as 'PrimeiroNome', LastName as 'UltimoNome' 
FROM person.Person

2) ProductNumber da tabela production.product "Numero do Produto"

select TOP 10 ProductNumber as 'Numero Do Produto'
FROM production.product

3) sales.SalesOrderDetail unitPrice "Preço Unitário"

SELECT TOP 10 UnitPrice as 'Preço Unitário'
FROM sales.SalesOrderDetail

-- SQL AULA 16 INNER JOIN + DESAFIOS (INTERMEDIÁRIO)

-- Existem 3 tipos gerais de JOINS:
-- INNER JOIN, OUTER JOIN E SELF-JOIN

/*
 Exemplo

 Tabelas:

 CLIENTE            Endereco
 ClienteId          EnderecoId
 Nome               Rua
 EnredecoId         Cidade

 SELECT C.ClienteId,C.Nome,E.Rua,E.Cidade
 FROM Cliente C
 INNER JOIN Endereco E ON E.EnderecoId = C.EnderecoId
*/

--- Exemplo  1 ---
BusinessEntityId, FirstName, LastName, EmailAddres

SELECT TOP 10 p.BusinessEntityId, p.FirstName, p.LastName, e.EmailAddress
FROM Person.Person P
INNER JOIN person.EmailAddress E ON E.BusinessEntityID = P.BusinessEntityId

--- Exemplo 2 ---
Vamos dizer que nós queremos os nomes dos produtos e as informação de suas subcategorias
-- ListPrice, Nome do Produto, Nome da SubCategoria

SELECT P.ListPrice 'Preço do Produto', P.Name as 'Nome Do Produto',  SUB.Name as 'Nome da SubCategoria'
FROM Production.Product P
INNER JOIN production.ProductSubcategory SUB ON SUB.ProductSubcategoryID = P.ProductSubcategoryID


--- Exemplo 2 ---
--BusinessEntityId,Name, PhoneNumberTypeId,PhoneNumber

> Utilizando e relacionando as tabelas 'person.PhoneNumberType' e 'person.PersonPhone'

SELECT TOP 10 PE.BusinessEntityID, PN.Name, PE.PhoneNumberTypeID, PE.PhoneNumber
FROM person.PhoneNumberType PN
INNER JOIN  person.personPhone PE ON PE.PhoneNumberTypeID = PN.PhoneNumberTypeID

--- Exemplo 3 ---
-- Quero AddressId, City, StateProvinceId, Nomem do Stado

> Tabelas utilizadas para relacionar: person.stateprovince e person.address

SELECT TOP 10 dd.AddressID, dd.City, dd.StateProvinceID, sp.Name
FROM person.stateprovince sp
INNER JOIN person.address dd ON dd.StateProvinceID = sp.StateProvinceID

/* SQL AULA 17 TIPOS DE JOINS + DESAFIOS (INTERMEDIÁRIO)*/


/*Exemplo de tabela
  A             B
1 Robo         1 Espada
2 Macaco       2 Robo
3 Samurai      3 Mario
4 Monitor      4 Samurai
*/

--- INNER JOIN ---
Inner Join retorna apenas os resultados que correspondem (existem) tanto na tablea A como Tabela B

SELECT * FROM TabelaA
INNER JOIN TabelaB ON TabelaA.nome = TabelaB.nome

Resultado:
id    nome      id  nome
1     Robo       2  Robo
3     Samurai    4  Samurai 

--- FULL OUTER JOIN ---
Full outer join retorna um conjunto de todos registros correspondentes da TabelaA e TabelaB quando são iguais. E além disso se não houver valores correspondentes, ele simplesmente irá preenches esse lado com "null"

SELECT * FROM TabelaA
FULL OUTER JOIN TabelaB ON TabelaA.nome = TabelaB.nome

Resultado:
id     nome    id       nome
1      Robo     2       Robo
2      Macaco   NULL    NULL
3      Samurai  4       Samurai
4      Monitor  NULL    NULL
NULL   NULL     1       Espada
NULL   NULL     3       Mario

--- LEFT OUTER JOIN ---
Left outer join retorna um conjunto de todos os registros da TabelaA, e alem disso, os registros correspondentes(quando disponíveis) na TabelaB. Se não houver registros correspondentes ele simplesmente vai preencher com "Null"

Resultado:
id  nome    id    nome      
1   Robo    2     Robo  
2   Macaco  Null  NULL
3   Samurai 4     Samurai  
4   Monitor NULL  NULL


--- Exemplos com JOIN ---
--LEFT OUTER JOIN
--LEFT JOIN

> Tabelas utilizadas: Person.Person, Sales.PersonCreditCard

SELECT *
FROM person.Person pp
INNER JOIN Sales.PersonCreditCard PC ON PC.BusinessEntityID = pp.BusinessEntityID

Retornado 19.118 registros

-- Utilizando Left --
SELECT pp.BusinessEntityID, pc.BusinessEntityID, pc.CreditCardID
FROM person.Person pp
LEFT JOIN Sales.PersonCreditCard PC ON PC.BusinessEntityID = pp.BusinessEntityID

Retornado 19.972 registros

-- Filtrando quem NÃO tem cartão de credito 

SELECT pp.BusinessEntityID, pc.BusinessEntityID, pc.CreditCardID
FROM person.Person pp
LEFT JOIN Sales.PersonCreditCard PC ON PC.BusinessEntityID = pp.BusinessEntityID
WHERE PC.BusinessEntityID is null


--- UNION ---
Operador union combina dois ou mais resultados de um select em um resultado apenas

-- Sintaxe 
SELECT coluna1, coluna2
FROM tabela1
UNION
SELECT coluna1, coluna2
FROM tabela2

/* SQL AULA 24 - SELF JOIN*/

--- Exercicio 1 ---
Eu quero encontrar (nome e data de contratação) de todos os funcionarios que foram contratados no mesmo ano 

SELECT A.firstname, A.hiredate, b.firstname, b.hiredate
FROM Employees A, Employees B
WHERE DATEPART(YEAR, a.hiredate) = DATEPART (YEAR, b.hiredate)

Retornado 27 registros

--- Desafio ---
Eu quero saber na tabela detalhe do pedido [Order Detaisl] quais produtos tem o mesmo percentual de desconto

SELECT A.productId, A.discount, B.productID, b.discount
FROM [Order Details] A, [Order Details] B
WHERE A.Discount = B.Discount