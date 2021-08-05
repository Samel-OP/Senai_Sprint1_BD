INSERT INTO EMPRESA (nomeEmpresa)
VALUES ('Localiza')

SELECT * FROM EMPRESA;
GO

DELETE FROM EMPRESA WHERE idEmpresa = 4;

INSERT INTO MARCA (nomeMarca)
VALUES ('Mercedes');

SELECT * FROM MARCA;
GO

DELETE FROM MARCA WHERE nomeMarca = 'Chevrolet';

INSERT INTO MODELO (idMarca, nomeModelo)
VALUES (3, 'Fiesta'), (4, 'C180'), (2, 'Gol'), (1, 'Argo');

SELECT * FROM MODELO;
GO

DELETE FROM MODELO WHERE nomeModelo = 'Corsa';

INSERT INTO VEICULO (idModelo,idEmpresa,placa)
VALUES ('');