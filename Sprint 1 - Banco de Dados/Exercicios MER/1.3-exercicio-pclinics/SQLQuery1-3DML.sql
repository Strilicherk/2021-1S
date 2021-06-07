USE PCCLINICS;

INSERT INTO Clinica (RazaoSocial, CNPJ, Endereco)
VALUES ('Meu Pimpão', '123456789-4444-22', 'Av. Limeira')
	   

INSERT INTO Veterinario (IdClinica, Veterinario, CRM)
VALUES					 (1, 'Lucas', '405')
						,(1, 'Rafael', '705');

INSERT INTO Dono (Dono)
VALUES			 ('Matheus')
				,('Gabriel');

INSERT INTO TipoPet (Tipo)
VALUES				 ('Cachorro')
					,('Gato')

INSERT INTO Raca (IdTipoPet, Raca)
VALUES				 (1, 'Beagle')
					,(1, 'Labrador')
					,(1, 'Pitbull')
					,(2, 'Siamês')

INSERT INTO Pet (IdRaca, IdDono, NomePet, DataNascimento)
VALUES			 (1, 1, 'Toretto', '10/10/2018')
				,(3, 1, 'Letty', '18/05/2017')
				,(1, 2, 'Sammy', '16/06/2016')

INSERT INTO Atendimento (IdPet, IdVeterinario, DataAtendimento, Descricao)
VALUES					 (1, 1, '10/10/2018', 'Restam 48 anos de vida')
						,(2, 2, '18/05/2017', 'O paciente está ok')
						,(1, 2, '16/06/2016', 'O paciente está ok')