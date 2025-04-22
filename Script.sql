-- Tabela de culturas (tipos de plantações)
CREATE TABLE Cultura (
    id_cultura NUMBER PRIMARY KEY,
    nome VARCHAR2(100),
    tipo VARCHAR2(50)
);

-- Tabela de plantações
CREATE TABLE Plantacao (
    id_plantacao NUMBER PRIMARY KEY,
    nome VARCHAR2(100),
    localizacao VARCHAR2(100),
    id_cultura NUMBER,
    FOREIGN KEY (id_cultura) REFERENCES Cultura(id_cultura)
);

-- Tabela de sensores (agora vinculada opcionalmente a uma plantação)
CREATE TABLE Sensor (
    id_sensor NUMBER PRIMARY KEY,
    tipo VARCHAR2(50), -- Ex: umidade, pH, N, P, K
    unidade_medida VARCHAR2(20),
    id_plantacao NUMBER, -- Sensor pode estar fixo em uma plantação
    FOREIGN KEY (id_plantacao) REFERENCES Plantacao(id_plantacao)
);

-- Tabela de leituras dos sensores
CREATE TABLE Leitura (
    id_leitura NUMBER PRIMARY KEY,
    data_hora TIMESTAMP,
    valor NUMBER(10,2),
    id_sensor NUMBER,
    FOREIGN KEY (id_sensor) REFERENCES Sensor(id_sensor)
);

-- Tabela de aplicações de produtos (fertilizantes, defensivos, etc.)
CREATE TABLE Aplicacao (
    id_aplicacao NUMBER PRIMARY KEY,
    data_hora TIMESTAMP,
    quantidade NUMBER(10,2),
    tipo_produto VARCHAR2(50),
    id_plantacao NUMBER,
    FOREIGN KEY (id_plantacao) REFERENCES Plantacao(id_plantacao)
);
