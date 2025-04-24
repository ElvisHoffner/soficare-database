-- Comando SQL para criar a tabela Pacientes
CREATE TABLE Pacientes (
    id_paciente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    email VARCHAR(255) UNIQUE
);

-- Comando SQL para criar a tabela Monitoramento
CREATE TABLE Monitoramento (
    id_monitoramento INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT NOT NULL,
    data_hora DATETIME NOT NULL,
    batimentos_cardiacos INT,
    pressao_sistolica INT,
    pressao_diastolica INT,
    temperatura DECIMAL(4, 2),
    oxigenacao INT,
    FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente)
);