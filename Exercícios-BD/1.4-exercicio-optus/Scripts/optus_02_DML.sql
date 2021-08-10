USE OPTUS;
GO

INSERT INTO ARTISTA (nomeArtista)
VALUES ('Camila Cabello'),('Johann Sebastian Bach'),('Alan Walker'),('Louis Armstrong');

INSERT INTO COMUM (nomeComum)
VALUES ('Lucas'),('Ana');

INSERT INTO USUARIO (nomeUsuario,email,senha)
VALUES ('Samuel','samuel@gmail.com','sa1237'),('Joao','joao@gmail.com','jo2252'),('Lucas','lucas@gmail.com','lu3236'),('Ana','ana@gmail.com','an4251');

INSERT INTO ESTILOMUSICAL (nomeEstilo)
VALUES ('Classico'),('Pop'),('Jazz'),('Eletronica'),('House Music');

INSERT INTO ALBUNS (idEstiloMusical,idEstiloMusical2,nomeMusica,idArtista,titulo,dataLancamento,localizacao,quantidadeMinutos,estado)
VALUES (2,null,'Havana...',1,'Musicas pop','2015/09/20','EUA',50,'ATIVO'),(1,null,'Air On The G String...',2,'Musicas Clássicas','2017/04/15','Europa',60,'ATIVO'),(4,'House Music','Faded...',3,'Musicas Eletrônicas','2018/08/25','EUA',160,'ATIVO'),(3,null,'What a Wonderful World...',4,'Os melhores do Jazz','2016/06/07','EUA',30,'ATIVO');

INSERT INTO ADMINISTRADOR (nomeAdm)
VALUES ('Joao'),('Samuel');

INSERT INTO THELOGIN (idComum,idAdministrador,idUsuario,verifyEmail,verifySenha)
VALUES (1,null,3,'lucas@gmail.com','lu3236'),(2,null,4,'ana@gmail.com','an4251'),(null,1,1,'samuel@gmail.com','sa1237'),(null,2,2,'joao@gmail.com','jo2252');

INSERT INTO GERENCIAMENTO (idAdministrador,idLogin,idAlbuns,editAlbuns)
VALUES (2,3,1,'Nova musica, Bruno Mars, Runaway Baby'),(1,4,2,'Nova musica, Mussorgsky, A Night on Bald Mountain');

