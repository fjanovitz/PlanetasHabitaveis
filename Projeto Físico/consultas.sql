-- Script: PROJETO GDI - PLANETAS HABITÁVEIS - CONSULTAS
-- Consultas em SQL do projeto da cadeira de Gerenciamento de Dados e Informação

-- Semi Join
-- Descobrir as pesquisas que receberam financiamento

SELECT P.NOME FROM Pesquisa P
WHERE P.COD IN (
    SELECT E.COD_PESQUISA FROM ESTUDA E
    WHERE EXISTS (
    SELECT R.CADASTRO FROM RECEBE R
    WHERE R.COD_PESQUISA = E.COD_PESQUISA
    )
);

-- Junção Interna
-- Descobrir quantos planetas cada sistema solar tem.  

SELECT S.NOME, COUNT(P.COD)
FROM PLANETA P INNER JOIN SISTEMASOLAR S
ON S.COD = P.SISTEMACOD
GROUP BY S.NOME;

-- Subconsulta Escalar, Junção Interna e Group By/Having
-- Descobrir quais planetas têm o número de elementos na atmosfera igual ou acima da média.

SELECT NOME_PLANETA 
FROM (
    SELECT P.NOME AS NOME_PLANETA, COUNT(CA.COD) AS TOTAL
    FROM PLANETA P INNER JOIN COMP_ATMOSFERICA CA ON P.COD = CA.COD_PLANETA
    GROUP BY P.NOME
    HAVING TOTAL >= (
        SELECT AVG(TOTAL)
        FROM (SELECT P2.NOME, COUNT(CA2.COD) AS TOTAL
        FROM PLANETA P2 INNER JOIN COMP_ATMOSFERICA CA2 ON P2.COD = CA2.COD_PLANETA
        GROUP BY P2.NOME)
    )
);

-- Operação de conjunto e Junção Interna
-- Juntar todas as galáxias com seus buracos negros

SELECT NOME_GALAXIA, B.NOME AS NOME_BURACONEGRO
FROM (
    SELECT COD AS COD_GALAXIA, NOME AS NOME_GALAXIA, COD_BURACONEGRO
    FROM GALAXIA_ELIPTICA
    UNION
    SELECT COD AS COD_GALAXIA, NOME AS NOME_GALAXIA, COD_BURACONEGRO 
    FROM GALAXIA_ESPIRAL
    UNION
    SELECT COD AS COD_GALAXIA, NOME AS NOME_GALAXIA, COD_BURACONEGRO 
    FROM GALAXIA_IRREGULAR
)
INNER JOIN BURACO_NEGRO B
ON B.COD = COD_BURACONEGRO;

-- Semi-Join e Subconsulta do tipo Tabela
-- Saber quais pesquisas que receberam financiamento.

SELECT P.NOME
FROM PESQUISA P
WHERE P.COD IN (
    SELECT E.REG_PESQUISA 
 	FROM ESTUDA E
    WHERE EXISTS (
        SELECT R.CAD_FINANCIAMENTO
  		FROM RECEBE R
        WHERE R.REG_PESQUISA = E.REG_PESQUISA
    )
);

-- Anti-Join
-- Saber quais buracos negros não estão no centro de uma galáxia

SELECT B.NOME
FROM BURACONEGRO B
WHERE B.COD NOT IN (
    SELECT G.CODBURACONEGRO
	FROM GALAXIA G
);

-- Junção Externa
-- Projetar o nome de todas as estrelas com raio acima de 500 mil km e seus respectivos sistemas solares

SELECT E.NOME AS ESTRELA, S.NOME AS SISTEMA_SOLAR
FROM ESTRELA E RIGHT OUTER JOIN SISTEMASOLAR S ON E.COD_SISTEMA = S.COD
WHERE E.RAIO > 500;

-- Subconsulta do tipo Linha
-- Encontrar todos os planetas com mesma amplitude térmica e temperatura média do planeta Vesta

SELECT *
FROM PLANETA
WHERE (TEMP_MEDIA, AMP_TERMICA) = (
    SELECT TEMP_MEDIA, AMP TERMICA
    FROM PLANETA
    WHERE NOME = 'Vesta'
);


