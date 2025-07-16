
-- 1
SELECT 
Nome, 
Ano
FROM Filmes

-- 2
SELECT Nome,Ano, Duracao
FROM Filmes 
ORDER BY Ano ASC

-- 3
SELECT Nome,Ano,Duracao
FROM Filmes
Where Nome = 'De Volta para o Futuro';

-- 4
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE ano = 1997;

-- 5
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE ano > 2000;

-- 6
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao >100 AND Duracao  <150
ORDER BY Duracao ASC;

-- 7
SELECT Ano,COUNT(Nome) AS Quantidade_Filmes
FROM Filmes
Group By Ano
ORDER BY Quantidade_Filmes DESC;

-- 8
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores 
WHERE Genero = 'M';

-- 9
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores 
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;

-- 10
SELECT 
Nome, Genero
FROM 
Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id
ORDER BY 
Nome, Genero ASC 

-- 11
SELECT
Nome, Genero
FROM 
Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id
WHERE Genero = 'Mistério'

-- 12 
SELECT
    Filmes.Nome,
    Atores.PrimeiroNome,
    Atores.UltimoNome,
    ElencoFilme.Papel
FROM
    Filmes
INNER JOIN
    ElencoFilme ON Filmes.ID = ElencoFilme.IdFilme
INNER JOIN
    Atores ON ElencoFilme.IdAtor = Atores.ID;
