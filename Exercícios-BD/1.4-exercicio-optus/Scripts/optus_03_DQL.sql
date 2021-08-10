USE OPTUS;
GO

--DQL
SELECT * FROM ARTISTA;
SELECT * FROM COMUM;
SELECT * FROM USUARIO;
SELECT * FROM ESTILOMUSICAL;
SELECT * FROM ALBUNS;
SELECT * FROM ADMINISTRADOR;
SELECT * FROM THELOGIN;
SELECT * FROM GERENCIAMENTO;


-- listar todos os usu�rios administradores, sem exibir suas senhas

USE OPTUS;
GO

SELECT nomeAdm,verifyEmail FROM ADMINISTRADOR
INNER JOIN THELOGIN
ON ADMINISTRADOR.idAdministrador = THELOGIN.idAdministrador;


-- listar todos os �lbuns lan�ados ap�s o um determinado ano de lan�amento

SELECT * FROM ALBUNS
WHERE dataLancamento > '2017/01/01'


-- listar os dados de um usu�rio atrav�s do e-mail e senha (RESPECTIVAMENTE)

SELECT * FROM USUARIO
WHERE USUARIO.email = 'samuel@gmail.com'

SELECT * FROM USUARIO
WHERE USUARIO.senha = 'an4251'


-- listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum 

SELECT idAlbuns,nomeArtista,nomeEstilo FROM ALBUNS
INNER JOIN ARTISTA
ON ALBUNS.idArtista = ARTISTA.idArtista
INNER JOIN ESTILOMUSICAL
ON ALBUNS.idEstiloMusical = ESTILOMUSICAL.idEstiloMusical
WHERE ALBUNS.estado = 'ATIVO';
