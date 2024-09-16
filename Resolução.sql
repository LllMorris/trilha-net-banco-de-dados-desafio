
--1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano FROM Filmes
ORDER BY Ano ASC

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT * FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--4 - Buscar os filmes lançados em 1997

SELECT * From Filmes
WHERE Ano = '1997'

--5 - Buscar os filmes lançados APÓS o ano 2000
SELECT * From Filmes
WHERE Ano > '2000'

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM Filmes
WHERE Duracao > 100 and Duracao < 250
ORDER BY Duracao ASC

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY count(Duracao) DESC

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * From Atores
Where Genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * From Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

--10 - Buscar o nome do filme e o gênero
SELECT Nome, genero From Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.ID
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.ID

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT Nome, genero From Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.ID
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.ID
WHERE genero = 'Mistério'


--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes
INNER JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.ID
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor


