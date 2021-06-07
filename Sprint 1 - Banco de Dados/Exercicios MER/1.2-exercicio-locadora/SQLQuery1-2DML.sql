USE LOCADORA;


INSERT INTO Empresa (NomeEmpresa)
VALUES		('Unidas')
		   ,('Localiza')

INSERT INTO Marca (NomeMarca)
VALUES			 ('Ford')
				,('GM')
				,('Fiat')

INSERT INTO Modelo (IdMarca, Descricao)
VALUES				 ('1', 'Fiesta')
					,('2', 'Onix')
					,('3', 'Argo')

INSERT INTO Veiculo (IdEmpresa, IdModelo, Placa)
VALUES				 (1, 1,'HEL1805')
					,(2, 2, 'FER1010')

INSERT INTO Cliente (Nome, CPF)
VALUES				 ('Saulo', '12345678911')
					,('Caique', '98765432100')

INSERT INTO Aluguel (IdCliente, IdVeiculo, DataInicio, DataFim)
VALUES				 (1, 1, '19/01/2019', '20/01/2019')
					,(2, 2, '20/01/2019', '21/01/2019')


