USE OPTUS;
GO

INSERT INTO COMUM (playlist)
VALUES ('PlaylistLucas'),('PlaylistAna');

INSERT INTO USUARIO (nomeUsuario,email,senha)
VALUES ('Samuel','samuel@gmail.com','sa1237'),('Joao','joao@gmail.com','jo2252'),('Lucas','lucas@gmail.com','lu3236'),('Ana','ana@gmail.com','an4251');

INSERT INTO ESTILOMUSICAL (nomeEstilo)
VALUES ('Classico'),('Pop'),('Jazz'),('Eletronica'),('House Music');

INSERT INTO ALBUNS (idEstiloMusical,idEstiloMusical2,nomeMusica)
VALUES (2,null,'Camila Cabello, Havana...'),(1,null,'Johann Sebastian Bach, Air On The G String...'),(4,null,'Alan Walker, Faded...'),(3,null,'Louis Armstrong, What a Wonderful World...');

INSERT INTO ADMINISTRADOR (playlistAdm)
VALUES ('PlaylistJoao'),('PlaylistSamuel');

INSERT INTO THELOGIN (idComum,idAdministrador,idUsuario,verifyEmail,verifySenha)
VALUES (1,null,3,'lucas@gmail.com','lu3236'),(2,null,4,'ana@gmail.com','an4251'),(null,1,1,'samuel@gmail.com','sa1237'),(null,2,2,'joao@gmail.com','jo2252');

INSERT INTO GERENCIAMENTO (idAdministrador,idLogin,idAlbuns,editAlbuns)
VALUES (2,3,1,'Nova musica, Bruno Mars, Runaway Baby'),(1,4,2,'Nova musica, Mussorgsky, A Night on Bald Mountain');

