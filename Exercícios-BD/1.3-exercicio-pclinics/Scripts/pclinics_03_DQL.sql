USE CLINICA;
GO

--DQL
SELECT * FROM CLINICA;
SELECT * FROM DONO;
SELECT * FROM VETERINARIO;
SELECT * FROM TIPOPET;
SELECT * FROM RACA;
SELECT * FROM PET;
SELECT * FROM ATENDIMENTO;


-- listar todos os veterin�rios (nome e CRMV) de uma cl�nica (raz�o social)

USE CLINICA;
GO

SELECT nomeVeterinario,Crmv,nomeClinica FROM VETERINARIO
FULL OUTER JOIN CLINICA
ON VETERINARIO.idClinica = CLINICA.idClinica
WHERE nomeClinica = 'Pclinics';


-- listar todas as ra�as que come�am com a letra S

USE CLINICA;
GO

SELECT * FROM RACA
WHERE nomeRaca LIKE 'P%';


-- listar todos os tipos de pet que terminam com a letra O

USE CLINICA;
GO

SELECT * FROM TIPOPET
WHERE nomeTipoPet LIKE '%O';


-- listar todos os pets mostrando os nomes dos seus donos

USE CLINICA;
GO

SELECT nomePet,nomeDono FROM DONO
INNER JOIN PET
ON DONO.idDono = PET.idDono;


-- listar todos os atendimentos mostrando o nome do veterin�rio que atendeu, o nome, 
-- a ra�a e o tipo do pet que foi atendido, o nome do dono do pet e o nome da cl�nica onde o pet foi atendido

USE CLINICA;
GO

SELECT idAtendimento,descricaoAtendimento,dataAtendimento,nomeVeterinario,nomePet,nomeRaca,nomeTipoPet,nomeDono,nomeClinica FROM ATENDIMENTO
INNER JOIN VETERINARIO
ON ATENDIMENTO.idVeterinario = VETERINARIO.idVeterinario
INNER JOIN PET
ON ATENDIMENTO.idPet = PET.idPet
INNER JOIN RACA
ON PET.idRaca = RACA.idRaca
INNER JOIN TIPOPET
ON RACA.idTipoPet = TIPOPET.idTipoPet
INNER JOIN DONO
ON PET.idDono = DONO.idDono
INNER JOIN CLINICA
ON VETERINARIO.idClinica = CLINICA.idClinica;
