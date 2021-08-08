USE LOCADORA;
GO

---DQL
SELECT * FROM EMPRESA;
SELECT * FROM MARCA;
SELECT * FROM MODELO;
SELECT * FROM VEICULO;
SELECT * FROM CLIENTE;
SELECT * FROM ALUGUEL;

-- listar todos os alugueis mostrando as datas de início e fim, o nome do cliente que alugou e nome do modelo do carro

USE LOCADORA;
GO

SELECT idAluguel,dataRetirada,dataDevolucao,nomeCliente,nomeModelo FROM ALUGUEL
INNER JOIN CLIENTE
ON ALUGUEL.idCliente = CLIENTE.idCliente
INNER JOIN VEICULO
ON ALUGUEL.idVeiculo = VEICULO.idVeiculo
INNER JOIN MODELO
ON VEICULO.idModelo = MODELO.idModelo;


-- listar os alugueis de um determinado cliente mostrando seu nome, as datas de início e fim e o nome do modelo do carro

USE LOCADORA;
GO

SELECT idAluguel,dataRetirada,dataDevolucao,nomeCliente,nomeModelo FROM ALUGUEL
INNER JOIN CLIENTE
ON ALUGUEL.idCliente = CLIENTE.idCliente
INNER JOIN VEICULO
ON ALUGUEL.idVeiculo = VEICULO.idVeiculo
INNER JOIN MODELO
ON VEICULO.idModelo = MODELO.idModelo
WHERE idAluguel = 56;

