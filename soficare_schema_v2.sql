-- Versão 2 do esquema do banco de dados SofiCare / atividade de avaliação do Módulo 3

-- Tabela Pacientes
CREATE TABLE IF NOT EXISTS Pacientes (
    id_paciente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    email VARCHAR(255) UNIQUE
);

-- Tabela Monitoramento
CREATE TABLE IF NOT EXISTS Monitoramento (
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

-- Tabela Medicações
CREATE TABLE IF NOT EXISTS Medicações (
    id_medicacao INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT NOT NULL,
    nome_medicamento VARCHAR(255) NOT NULL,
    dosagem VARCHAR(255),
    frequencia VARCHAR(255),
    data_inicio DATE,
    data_fim DATE,
    FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente)
);

-- Tabela Alarmes
CREATE TABLE IF NOT EXISTS Alarmes (
    id_alarme INT PRIMARY KEY AUTO_INCREMENT,
    id_paciente INT NOT NULL,
    hora_alarme TIME NOT NULL,
    descricao VARCHAR(255),
    ativo BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente)
);