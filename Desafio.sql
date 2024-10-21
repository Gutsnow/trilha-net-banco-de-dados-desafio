-- 1)
SELECT 
Nome,Ano
FROM Filmes

-- 2)
SELECT 
Nome,Ano
FROM Filmes
ORDER BY Ano

-- 3)
SELECT 
Nome,ano,duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4)
SELECT 
Nome,ano,duracao
FROM Filmes
WHERE Ano = 1997

-- 5)
SELECT 
Nome,ano,duracao
FROM Filmes
WHERE Ano > 2000

-- 6)
SELECT 
Nome,ano,duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7)
SELECT Ano,COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8)
SELECT * FROM Atores
WHERE Genero = 'M'

-- 9)
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10)
SELECT Nome, Genero FROM Filmes
JOIN FilmesGenero
ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos
ON Generos.Id = FilmesGenero.IdGenero

-- 11)
SELECT Nome, Genero FROM Filmes
JOIN FilmesGenero
ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos
ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'mistério'

-- 12)
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes
JOIN ElencoFilme
ON ElencoFilme.IdAtor = Filmes.Id
JOIN Atores
ON Atores.Id = ElencoFilme.IdAtor


-- EXTRAS)
SELECT * FROM ElencoFilme

SELECT * FROM Atores

SELECT * FROM FilmesGenero

SELECT * FROM Filmes

SELECT * FROM Generos