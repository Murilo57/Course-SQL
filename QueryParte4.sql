/* SQL AULA 27 - CREATE TABLE */

Sintaxe:
CREATE TABLE nomeTabela (
    coluna1 tipo restricaoDaColuna,
    coluna2 tipo restricaoDaColuna,
    coluna3 tipo restricaoDaColuna,
)

Principais tipos de restrições que podem ser aplicadas
NOT NULL - Não permite nulos
UNIQUE - Força que todos os valores em uma coluna sejam diferentes
PRIMARY KEY - Uma junção de NOT NULL e UNIQUE
FOREIGN KEY - Identifica únicamente uma linha em outra tabela
CHECK - FORÇA uma condição especifica em uma coluna
DEFAULT - Força um valor padrão quando nenhum valor é passado

Tabelas criadas:

-- Tabela 1
CREATE TABLE Canal (CanalId INT PRIMARY KEY, Nome VARCHAR(150) NOT NULL, ContagemInscritos INT DEFAULT 0, DataCriacao DATETIME NOT NULL)

-- Tabela 2
CREATE TABLE Video (VideoId INT PRIMARY KEY, Nome VARCHAR(150) NOT NULL, Visualizacoes INT DEFAULT 0, Likes INT DEFAULT 0, Dislikes INT DEFAULT 0, Duracao INT NOT NULL, CanalId INT FOREIGN KEY REFERENCES Canal(CanalId))

/* SQL AULA 28 - INSERT INTO + DESAFIOS */
Inserir registros novos

Sintaxe:

INSERT INTO nomeTabela(coluna1, coluna2,....)
VALUES(valor1,valor2)

/* SQL AULA 29 - UPDATE */
Atualiza registros

Sintaxe:
UPDATE nomeTabela
SET coluna1 = valor1
    coluna2 = valor2
WHERE condicao

/* SQL AULA 30 - DELETE */
Delete registros

Sintaxe:
--Exemplo--
DELETE FROM aula
WHERE nome = 'mudei'

/*SQL AULA 31 - ALTER TABLE*/
Altera a estrutura de uma tabela

Sintaxe:
ALTER TABLE nomeDaTabela
ACAO

--- Exemplos do que pode ser feito: ---
- Add, remover, ou alterar uma coluna
- Setar valores padrões para uma coluna
- Add ou Remover restrições de colunas
- Renomear uma tabela

/* SQL AULA 32 DROP TABLE */
Exclui uma tabela do banco de dados

Sintaxe:
DROP TABLE nomeDaTabela

/* SQL AULA 33 CHECK CONSTRAINT */
Cria restrições de valores que podem ser inseridos em uma coluna de uma tabela quando se esta criando uma tabela nova

Sintaxe:

CREATE TABLE CarteiraMotorista (
    Id int NOT NULL,
    Nome varchar(255) NOT NULL,
    Idade int CHECK ( Idade >= 18)
)
/* SQL AULA 34 NOT NULL CONSTRAINT */
Força a restrição com que não sej possivel inserir dados em uma tabela sem preenchimento a coluna marcada como NOT NULL
