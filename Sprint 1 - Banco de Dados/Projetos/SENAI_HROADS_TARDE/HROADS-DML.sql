USE HROADS;

--Inserir os registros conforme descrição no próprio texto
INSERT INTO Classe (Nome)
VALUES			   ('Barbaro')
				  ,('Cruzado')
				  ,('Caçadora de Demonios')
				  ,('Monge')
				  ,('Necromante')
				  ,('Feiticeiro')
				  ,('Arcanista')

INSERT INTO TipoHabilidade (Tipo)
VALUES					   ('Ataque')
						  ,('Defesa')
						  ,('Cura')
						  ,('Magia')

INSERT INTO Habilidade	(Habilidade, idTipo)
VALUES					('Lança Mortal', 1)
					   ,('Escudo Supremo', 2)
					   ,('Recuperar Vida', 3)

INSERT INTO Personagem	(Nome, idClasse, CapacidadeMaximaDeVida, CapacidadeMaximaDeMana, DataAtualizacao, DataCriacao)
VALUES					('DeuBug', 1, 100, 80, '02/03/2021','18/01/2019')
					   ,('BitBug', 4, 70, 100, '02/03/2021', '17/03/2016')
					   ,('Fer8', 7, 75, 60, '02/03/2021', '18/03/2018')

INSERT INTO ClasseHabilidade (idClasse, idHabilidade)
VALUES					(1, 1)
					   ,(1, 2)
					   ,(2, 2)
					   ,(3, 1)
					   ,(4, 3)
					   ,(4, 2)
					   ,(5, NULL)
					   ,(6, 3)
					   ,(7, NULL)

--Atualizar o nome do personagem Fer8 para Fer7;
UPDATE Personagem
SET Nome = 'Fer7'
WHERE idPersonagem = 15

--Atualizar o nome da classe de Necromante para Necromancer;
UPDATE Classe
SET Nome = 'Necromancer'
WHERE idClasse = 5