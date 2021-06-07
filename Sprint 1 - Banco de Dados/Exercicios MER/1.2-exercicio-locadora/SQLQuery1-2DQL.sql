USE Locadora

SELECT * FROM Empresa
SELECT * FROM Marca
SELECT * FROM Modelo
SELECT * FROM Veiculo
SELECT * FROM Cliente
SELECT * FROM Aluguel

SELECT Aluguel.DataInicio, Aluguel.DataFim, Cliente.Nome, Modelo.Descricao FROM Aluguel
INNER JOIN Cliente
ON Cliente.IdCliente = Aluguel.IdCliente
INNER JOIN Veiculo
ON Aluguel.IdVeiculo = Veiculo.IdVeiculo
INNER JOIN Modelo
ON Modelo.IdModelo = Veiculo.IdModelo

SELECT Aluguel.DataInicio, Aluguel.DataFim, Cliente.Nome, Modelo.Descricao FROM Aluguel
INNER JOIN Cliente
ON Cliente.IdCliente = Aluguel.IdCliente
INNER JOIN Veiculo
ON Aluguel.IdVeiculo = Veiculo.IdVeiculo
INNER JOIN Modelo
ON Modelo.IdModelo = Veiculo.IdModelo
WHERE Cliente.Nome LIKE 'Saulo'