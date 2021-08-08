CREATE DATABASE OPTUS;
GO

USE OPTUS
GO

CREATE TABLE USUARIO (
  idUsuario INT PRIMARY KEY IDENTITY(1,1), 
  nomeUsuario VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  senha VARCHAR(20) NOT NULL
);
GO

CREATE TABLE COMUM (
  idComum TINYINT PRIMARY KEY IDENTITY(1,1),
  playlist VARCHAR(50)
);
GO

CREATE TABLE ESTILOMUSICAL (
  idEstiloMusical TINYINT PRIMARY KEY IDENTITY(1,1),
  nomeEstilo CHAR(50) NOT NULL
);
GO

CREATE TABLE ARTISTA (
  idArtista SMALLINT PRIMARY KEY IDENTITY(1,1),
  nomeArtista VARCHAR(50) NOT NULL
);
GO

CREATE TABLE ALBUNS (
  idAlbuns INT PRIMARY KEY IDENTITY(1,1),
  idEstiloMusical TINYINT FOREIGN KEY REFERENCES ESTILOMUSICAL(idEstiloMusical),
  idEstiloMusical2 TINYINT FOREIGN KEY REFERENCES ESTILOMUSICAL(idEstiloMusical),
  nomeMusica VARCHAR(50) NOT NULL,
  titulo VARCHAR(50) NOT NULL,
  dataLancamento DATE NOT NULL,
  localizacao VARCHAR(50) NOT NULL, 
  quantidadeMinutos SMALLINT NOT NULL,
  estado VARCHAR(20) NOT NULL
);
GO

CREATE TABLE ADMINISTRADOR (
  idAdministrador TINYINT PRIMARY KEY IDENTITY(1,1),
  playlistAdm VARCHAR(50)
);
GO

CREATE TABLE THELOGIN (
  idLogin INT PRIMARY KEY IDENTITY(1,1),
  idComum TINYINT FOREIGN KEY REFERENCES COMUM(idComum),
  idAdministrador TINYINT FOREIGN KEY REFERENCES ADMINISTRADOR(idAdministrador),
  idUsuario INT FOREIGN KEY REFERENCES USUARIO(idUsuario),
  verifyEmail VARCHAR(50) NOT NULL,
  verifySenha VARCHAR(20) NOT NULL
);
GO

CREATE TABLE GERENCIAMENTO (
  idGerenciamento TINYINT PRIMARY KEY IDENTITY(1,1),
  idAdministrador TINYINT FOREIGN KEY REFERENCES ADMINISTRADOR(idAdministrador),
  idLogin INT FOREIGN KEY REFERENCES THELOGIN(idLogin),
  idAlbuns INT FOREIGN KEY REFERENCES ALBUNS(idAlbuns),
  editAlbuns VARCHAR(50) NOT NULL
);
GO
