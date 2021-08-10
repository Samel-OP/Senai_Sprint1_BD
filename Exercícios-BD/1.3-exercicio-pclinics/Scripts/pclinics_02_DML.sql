USE CLINICA;
GO

INSERT INTO CLINICA (nomeClinica,endereco)
VALUES ('Pclinics','Rua Manuel Veloso da Costa, 35'),('PetCare','Rua Duilio, 492');

INSERT INTO DONO (nomeDono)
VALUES ('Samuel'),('Joao'),('Lucas'),('Ana');

INSERT INTO VETERINARIO (idClinica,nomeVeterinario,Crmv)
VALUES (6,'Pedro','6413SP'),(7,'Igor','4142SP'),(6,'Gabriel','7347SP'),(7,'Enzo','3715SP');

INSERT INTO TIPOPET (nomeTipoPet)
VALUES ('Cachorro'), ('Gato');

INSERT INTO RACA (nomeRaca,idTipoPet)
VALUES ('Poodle',1),('Labrador',1),('Persa',2),('Ragdoll',2);

INSERT INTO PET (idDono,idRaca,nomePet,dataNascimentoPet)
VALUES (3,2,'Rex','2010/09/19'),(4,1,'Ellie','2015/04/28'),(2,4,'Teddy','2017/08/15'),(1,3,'Marley','2020/03/22');

INSERT INTO ATENDIMENTO (idVeterinario,idPet,descricaoAtendimento,dataAtendimento)
VALUES (6,3,'Foi realizado a  aplicação de vacinas','2021/04/20'),(7,4,'O animal foi medicado','2021/04/21'),(8,2,'Foram feitos curativos no animal','2021/04/22'),(5,1,'Foi realizado um diagnóstico por imagem','2021/04/23');

