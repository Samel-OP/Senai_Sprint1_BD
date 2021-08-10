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


-- listar todos os usuários administradores, sem exibir suas senhas

USE OPTUS;
GO

SELECT nomeAdm,verifyEmail FROM ADMINISTRADOR
INNER JOIN THELOGIN
ON ADMINISTRADOR.idAdministrador = THELOGIN.idAdministrador;


-- listar todos os álbuns lançados após o um determinado ano de lançamento

SELECT * FROM ALBUNS
WHERE dataLancamento > '2017/01/01'


-- listar os dados de um usuário através do e-mail e senha (RESPECTIVAMENTE)

SELECT * FROM USUARIO
WHERE USUARIO.email = 'samuel@gmail.com'

SELECT * FROM USUARIO
WHERE USUARIO.senha = 'an4251'


-- listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum 

SELECT idAlbuns,nomeArtista,nomeEstilo FROM ALBUNS
INNER JOIN ARTISTA
ON ALBUNS.idArtista = ARTISTA.idArtista
INNER JOIN ESTILOMUSICAL
ON ALBUNS.idEstiloMusical = ESTILOMUSICAL.idEstiloMusical
WHERE ALBUNS.estado = 'ATIVO';
