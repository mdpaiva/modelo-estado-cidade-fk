CREATE TABLE Estado (
    id_estado INT(11) PRIMARY KEY,
    estado VARCHAR(150) NOT NULL,
    sigla VARCHAR(2) NOT NULL
);

CREATE TABLE Cidade (
    id_cidade INT(11) PRIMARY KEY,
    cidade VARCHAR(150) NOT NULL,
    abreviacao VARCHAR(50),
    cid_id_estado INT(11) NOT NULL,
    FOREIGN KEY (cid_id_estado) REFERENCES Estado(id_estado)
);

INSERT INTO Estado (id_estado, estado, sigla) VALUES
(1, 'Pará', 'PA'),
(2, 'Amazonas', 'AM'),
(3, 'Amapá', 'AP'),
(4, 'Acre', 'AC');

INSERT INTO Cidade (id_cidade, cidade, abreviacao, cid_id_estado) VALUES
(101, 'Belém', 'BLM', 1),
(102, 'Santarém', 'STM', 1),
(103, 'Itaituba', 'ITB', 1),
(104, 'Manaus', 'MAO', 2),
(105, 'Parintins', 'PIN', 2),
(106, 'Macapá', 'MCP', 3),
(107, 'Oiapoque', 'OYK', 3),
(108, 'Rio Branco', 'RBR', 4),
(109, 'Cruzeiro do Sul', 'CZS', 4),
(110, 'Tarauacá', 'TRQ', 4);
-- Abreviação das cidade é baseado no código aeroportuário IATA