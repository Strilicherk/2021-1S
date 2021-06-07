USE PCCLINICS;

SELECT * FROM Clinica;
SELECT * FROM Veterinario;
SELECT * FROM Dono;
SELECT * FROM TipoPet;
SELECT * FROM Raca;
SELECT * FROM Pet;
SELECT * FROM Atendimento;
 
SELECT Veterinario, CRM, Clinica.RazaoSocial FROM Veterinario 
INNER JOIN Clinica 
ON Clinica.IdClinica = Veterinario.IdClinica
WHERE RazaoSocial LIKE 'Meu Pimpão';

SELECT Tipo FROM TipoPet WHERE Tipo LIKE '%_o';
SELECT Raca FROM Raca WHERE Raca LIKE 'S_%';

SELECT Pet.NomePet,Dono.Dono 
FROM Pet
INNER JOIN Dono
ON Pet.IdDono = Dono.IdDono;

SELECT Atendimento.idVeterinario, Veterinario.Veterinario, Raca.Raca, Pet.NomePet, Dono.Dono, Clinica.RazaoSocial FROM Atendimento
INNER JOIN Veterinario 
ON Atendimento.IdVeterinario = Veterinario.IdVeterinario
INNER JOIN Pet
ON Atendimento.IdPet = Pet.IdPet
INNER JOIN Raca 
ON Raca.IdRaca = Pet.IdRaca
INNER JOIN Dono
ON Dono.IdDono = Pet.IdDono
INNER JOIN Clinica
ON Clinica.IdClinica = Veterinario.IdClinica;