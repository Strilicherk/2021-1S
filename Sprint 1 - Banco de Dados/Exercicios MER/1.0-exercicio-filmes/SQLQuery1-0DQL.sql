USE Filmes;

SELECT * FROM Generos;
SELECT * FROM Filmes;

SELECT Titulo, idGenero FROM Filmes;

--INNER JOIN
SELECT Filmes.idFilme,Filmes.Titulo, Generos.Nome AS Genero FROM Filmes
INNER JOIN Generos
ON Filmes.idGenero = Generos.idGenero;

--LEFT JOIN
SELECT Filmes.idFilme,Filmes.Titulo, Generos.Nome AS Genero FROM Filmes
LEFT JOIN Generos
ON Filmes.idGenero = Generos.idGenero;

--RIGHT JOIN
SELECT Filmes.idFilme,Filmes.Titulo, Generos.Nome AS Genero FROM Filmes
RIGHT JOIN Generos
ON Filmes.idGenero = Generos.idGenero;

