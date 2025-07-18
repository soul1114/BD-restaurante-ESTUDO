CREATE DATABASE IF NOT EXISTS RESTAURANTE;

USE RESTAURANTE;

CREATE TABLE FUNCIONARIOS (
id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cpf VARCHAR(14) UNIQUE NOT NULL,
data_nascimento DATE NOT NULL,
endereco VARCHAR(255) NOT NULL,
telefone VARCHAR(15),
email VARCHAR(255) UNIQUE,
cargo VARCHAR(100) NOT NULL,
salario DECIMAL(10,2) NOT NULL,
data_admissao DATE NOT NULL
);

CREATE TABLE clientes (
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cpf VARCHAR(14) UNIQUE NOT NULL,
data_nascimento DATE NOT NULL,
endereco VARCHAR(255) NOT NULL,
telefone VARCHAR(15),
email VARCHAR(255) UNIQUE,
data_cadastro DATE
);

CREATE TABLE produtos (
id_produto INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255),
descricao TEXT,
preco DECIMAL(10,2),
categoria VARCHAR(100)
);

CREATE TABLE pedidos (
id_pedido INT PRIMARY KEY AUTO_INCREMENT,
id_cliente INT NOT NULL,
id_funcionario INT NOT NULL,
id_produto INT NOT NULL,
quantidade INT NOT NULL,
preco DECIMAL(10,2),
data_pedido DATE NOT NULL,
status_pedido VARCHAR(50) NOT NULL,

-- chaves estrangeiras
FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
FOREIGN KEY (id_funcionario) REFERENCES funcionarios (id_funcionario),
FOREIGN KEY (id_produto) REFERENCES produtos (id_produto)
);

CREATE TABLE info_produtos (
id_info INT PRIMARY KEY AUTO_INCREMENT,
id_produto INT NOT NULL,
ingredites TEXT,
fornecedor VARCHAR(255),

-- chaves estrangeiras
FOREIGN KEY (id_produto) REFERENCES produtos (id_produto)
);




USE restaurante;

INSERT INTO funcionarios (nome, cpf, data_nascimento, endereco, telefone, email, cargo, salario, data_admissao)
VALUES ('Ricardo Sousa', '111.222.333-44', '1992-05-12', 'Rua Harmonia 157, São Paulo', '11987651234', 'ricardo.sousa@email.com', 'Chefe de Cozinha', 6000.00, '2019-03-15');

INSERT INTO funcionarios (nome, cpf, data_nascimento, endereco, telefone, email, cargo, salario, data_admissao)
VALUES
('Lívia Castro', '222.333.444-55', '1989-11-25', 'Av. Rebouças 1234, São Paulo', '11987653421', 'livia.castro@email.com', 'Subgerente', 5500.00, '2019-06-20'),

('Marcos Lima', '333.444.555-66', '1985-04-17', 'Rua Augusta 2020, São Paulo', '11987655678', 'marcos.lima@email.com', 'Barman', 2800.00, '2020-01-10'),

('Carla Mendes', '444.555.666-77', '1993-07-03', 'Av. Paulista 1853, São Paulo', '11987659876', 'carla.mendes@email.com', 'Atendente', 2600.00, '2020-07-15'),

('Tiago Nunes', '555.666.777-88', '1978-08-12', 'Rua Funchal 500, São Paulo', '11987656789', 'tiago.nunes@email.com', 'Sommelier', 3400.00, '2021-04-22'),

('Cláudia Vieira', '666.777.888-99', '1981-01-19', 'Alameda Lorena 1300, São Paulo', '11987657890', 'claudia.vieira@email.com', 'Cozinheira', 3200.00, '2021-08-30'),

('Pedro Martins', '777.888.999-00', '1983-12-05', 'Rua dos Pinheiros 800, São Paulo', '11987658901', 'pedro.martins@email.com', 'Garçom', 2700.00, '2022-03-15'),

('Fernanda Rocha', '888.999.000-11', '1990-09-27', 'Av. Faria Lima 1500, São Paulo', '11987659012', 'fernanda.rocha@email.com', 'Garçonete', 2700.00, '2022-05-20'),

('André Costa', '999.000.111-22', '1986-03-14', 'Rua Bela Cintra 985, São Paulo', '11987660123', 'andre.costa@email.com', 'Gerente', 4700.00, '2022-10-10'),

('Sofia Alves', '000.111.222-33', '1995-06-01', 'Rua Consolação 1235, São Paulo', '11987661234', 'sofia.alves@email.com', 'Recepcionista', 2400.00, '2023-01-01');

USE restaurante;

INSERT INTO clientes (nome, cpf, data_nascimento, endereco, telefone, email, data_cadastro) 
VALUES ('Lucas Silva', '123.456.789-01', '1990-01-15', 'Av. Brigadeiro Faria Lima, 1571, São Paulo', '11987651234', 'lucas.silva@email.com', '2023-01-12');

INSERT INTO clientes (nome, cpf, data_nascimento, endereco, telefone, email, data_cadastro) 
VALUES
('Ana Paula', '234.567.890-12', '1985-03-22', 'Rua Oscar Freire, 1290, São Paulo', '11987652345', 'ana.paula@email.com', '2023-01-12'),

('Rafael Costa', '345.678.901-23', '1992-07-18', 'Av. Paulista, 1844, São Paulo', '11987653456', 'rafael.costa@email.com', '2023-01-12'),

('Camila Rodrigues', '456.789.012-34', '1988-05-24', 'Rua Augusta, 2530, São Paulo', '11987654567', 'camila.rodrigues@email.com', '2023-01-12'),

('Eduardo Santos', '567.890.123-45', '1975-11-30', 'Alameda Santos, 980, São Paulo', '11987655678', 'eduardo.santos@email.com', '2023-01-12'),

('Fernanda Lima', '678.901.234-56', '1994-04-15', 'Rua da Consolação, 2000, São Paulo', '11987656789', 'fernanda.lima@email.com', '2023-01-12'),

('Gustavo Pereira', '789.012.345-67', '1982-02-28', 'Av. Rebouças, 3001, São Paulo', '11987657890', 'gustavo.pereira@email.com', '2023-01-12'),

('Juliana Machado', '890.123.456-78', '1996-09-14', 'Av. Brasil, 1620, São Paulo', '11987658901', 'juliana.machado@email.com', '2023-01-12'),

('Marcos Ribeiro', '901.234.567-89', '1991-12-12', 'Rua Bela Cintra, 1225, São Paulo', '11987659012', 'marcos.ribeiro@email.com', '2023-01-12'),

('Patricia Almeida', '912.345.678-90', '1987-06-19', 'Rua Haddock Lobo, 1327, São Paulo', '11987660123', 'patricia.almeida@email.com', '2023-01-12'),

('Roberto Nunes', '923.456.789-01', '1979-03-21', 'Av. Nove de Julho, 2045, São Paulo', '11987661234', 'roberto.nunes@email.com', '2023-01-12'),

('Sandra Gomes', '934.567.890-12', '1984-08-10', 'Rua Pamplona, 1453, São Paulo', '11987662345', 'sandra.gomes@email.com', '2023-01-12'),

('Tiago Souza', '945.678.901-23', '1989-01-15', 'Av. Europa, 784, São Paulo', '11987663456', 'tiago.souza@email.com', '2023-01-12'),

('Vanessa Moraes', '956.789.012-34', '1974-10-23', 'Rua Amauri, 350, São Paulo', '11987664567', 'vanessa.moraes@email.com', '2023-01-12'),

('Daniel Oliveira', '967.890.123-45', '1993-12-11', 'Rua dos Pinheiros, 900, São Paulo', '11987665678', 'daniel.oliveira@email.com', '2023-01-12'),

('Maria Clara', '978.901.234-56', '1998-03-05', 'Av. Ibirapuera, 3103, São Paulo', '11987666789', 'maria.clara@email.com', '2023-01-12'),

('João Pedro', '989.012.345-67', '1981-05-27', 'Rua Tabapuã, 1123, São Paulo', '11987667890', 'joao.pedro@email.com', '2023-01-12'),

('Larissa Fonseca', '991.123.456-78', '1986-11-09', 'Av. Cidade Jardim, 400, São Paulo', '11987668901', 'larissa.fonseca@email.com', '2023-01-12'),

('Henrique Silva', '992.234.567-89', '1990-02-14', 'Av. São Gabriel, 477, São Paulo', '11987669012', 'henrique.silva@email.com', '2023-01-12'),

('Isabela Freitas', '993.345.678-90', '1994-07-20', 'Rua Veneza, 1000, São Paulo', '11987670123', 'isabela.freitas@email.com', '2023-01-12'),

('Giovanna Rocha', '994.456.789-01', '1987-12-01', 'Rua Artur Azevedo, 1767, São Paulo', '11987671234', 'giovanna.rocha@email.com', '2023-01-12'),

('Leonardo Alves', '995.567.890-12', '1988-01-22', 'Rua Joaquim Antunes, 760, São Paulo', '11987672345', 'leonardo.alves@email.com', '2023-01-12'),

('Beatriz Santos', '996.678.901-23', '1976-06-16', 'Av. Santo Amaro, 1230, São Paulo', '11987673456', 'beatriz.santos@email.com', '2023-01-12'),

('Carlos Eduardo', '997.789.012-34', '1972-04-04', 'Rua Estados Unidos, 1457, São Paulo', '11987674567', 'carlos.eduardo@email.com', '2023-01-12'),

('Fábio Lopes', '998.890.123-45', '1989-08-12', 'Av. das Nações Unidas, 1889, São Paulo', '11987675678', 'fabio.lopes@email.com', '2023-01-12'),

('Tatiane Costa', '999.901.234-56', '1995-10-30', 'Rua Guarará, 532, São Paulo', '11987676789', 'tatiane.costa@email.com', '2023-01-12'),

('Ricardo Mendonça', '991.012.345-67', '1980-03-17', 'Rua Pedroso Alvarenga, 1100, São Paulo', '11987677890', 'ricardo.mendonca@email.com', '2023-01-12'),

('Elisa Carvalho', '992.123.456-78', '1997-05-25', 'Av. Roque Petroni Júnior, 1089, São Paulo', '11987678901', 'elisa.carvalho@email.com', '2023-01-12'),

('Flávio Barros', '993.234.567-89', '1985-09-19', 'Rua Gomes de Carvalho, 1356, São Paulo', '11987679012', 'flavio.barros@email.com', '2023-01-12'),

('Priscila Ribeiro', '994.345.678-90', '1983-07-28', 'Rua Bandeira Paulista, 982, São Paulo', '11987680123', 'priscila.ribeiro@email.com', '2023-01-12');

USE restaurante;

INSERT INTO produtos (nome, descricao, preco, categoria) VALUES

('Feijoada', 'Feijoada completa com arroz, farofa, couve e laranja.', 29.90, 'Prato Principal'),

('Picanha na Chapa', 'Picanha fatiada servida com alho, arroz, farofa e vinagrete.', 42.00, 'Prato Principal'),

('Moqueca Baiana', 'Moqueca de peixe e camarão, acompanhada de arroz branco e pirão.', 37.50, 'Prato Principal'),

('Bobó de Camarão', 'Camarão cozido em creme de mandioca e azeite de dendê, servido com arroz.', 45.00, 'Prato Principal'),

('Bacalhau à Brás', 'Bacalhau desfiado, preparado com batata palha, ovos e cebola.', 38.00, 'Prato Principal'),

('Coxinha de Frango', 'Massa de batata com recheio cremoso de frango, servida frita.', 6.50, 'Aperitivo'),

('Pastel de Carne', 'Pastel frito com recheio de carne moída temperada.', 5.00, 'Aperitivo'),

('Pastel de Queijo', 'Pastel frito com recheio de queijo derretido.', 5.00, 'Aperitivo'),

('Empada de Palmito', 'Empada de massa podre recheada com creme de palmito.', 6.00, 'Aperitivo'),

('Risoto de Camarão', 'Risoto de camarão com toque de limão siciliano e alho-poró.', 36.00, 'Prato Principal'),

('Escondidinho de Carne Seca', 'Purê de mandioca com recheio de carne seca e queijo coalho.', 32.00, 'Prato Principal'),

('Salada Caprese', 'Tomate, muçarela de búfala e manjericão, com azeite e vinagre balsâmico.', 22.00, 'Entrada'),

('Polenta Mole com Ragú de Linguiça', 'Polenta cremosa servida com ragú de linguiça e molho de tomate.', 28.00, 'Prato Principal'),

('Frango à Parmegiana', 'Peito de frango empanado coberto com queijo e molho de tomate, servido com arroz e fritas.', 35.00, 'Prato Principal'),

('Salmão Grelhado', 'Salmão grelhado servido com legumes no vapor e molho de alcaparras.', 42.00, 'Prato Principal'),

('Caipirinha de Limão', 'Tradicional caipirinha brasileira feita com cachaça, limão e açúcar.', 15.00, 'Bebida'),

('Suco de Maracujá', 'Suco natural de maracujá.', 8.00, 'Bebida'),

('Chopp Gelado', 'Chopp claro, servido bem gelado.', 7.50, 'Bebida'),

('Mousse de Maracujá', 'Sobremesa leve e refrescante à base de maracujá.', 12.00, 'Sobremesa'),

('Pudim de Leite', 'Pudim de leite condensado com calda de caramelo.', 10.00, 'Sobremesa');

USE restaurante;

INSERT INTO info_produtos (id_produto, ingredites, fornecedor) VALUES
(1, 'Feijão preto, carne seca, costelinha, linguiça, arroz, farinha, couve, laranja', 'Distribuidora Central'),
(2, 'Picanha, alho, arroz, farofa, vinagrete', 'Carnes Boi Nobre'),
(3, 'Peixe, camarão, leite de coco, azeite de dendê, arroz, farinha', 'Mar & Terra Distribuidora'),
(4, 'Camarão, mandioca, leite de coco, azeite de dendê, arroz', 'Mar & Terra Distribuidora'),
(5, 'Bacalhau, batata, ovo, cebola, azeite', 'Importadora Lisboa'),
(6, 'Frango, batata, massa de trigo', 'Avícola São José'),
(7, 'Carne moída, massa de trigo', 'Carnes Boi Nobre'),
(8, 'Queijo, massa de trigo', 'Laticínios Vale do Sereno'),
(9, 'Palmito, massa de trigo, creme de leite', 'Conservas Sabor da Terra'),
(10, 'Camarão, arroz arbóreo, limão siciliano, alho-poró', 'Mar & Terra Distribuidora'),
(11, 'Carne seca, mandioca, queijo coalho', 'Carnes Boi Nobre e Laticínios Vale do Sereno'),
(12, 'Tomate, muçarela de búfala, manjericão', 'Queijaria Bela Vista e Horta Santa Luzia'),
(13, 'Linguiça, polenta, molho de tomate', 'Carnes Boi Nobre e Moinho Dourado'),
(14, 'Frango, queijo, molho de tomate, arroz, batata', 'Avícola São José e Laticínios Vale do Sereno'),
(15, 'Salmão, legumes, alcaparras', 'Pescados do Norte e Hortifruti Natural da Terra'),
(16, 'Cachaça, limão, açúcar', 'Destilaria Nacional'),
(17, 'Maracujá', 'Hortifruti Natural da Terra'),
(18, 'Malte, lúpulo', 'Cervejaria do Vale'),
(19, 'Maracujá, creme de leite, açúcar', 'Hortifruti Natural da Terra e Laticínios Vale do Sereno'),
(20, 'Leite condensado, ovos, açúcar', 'Laticínios Vale do Sereno');

USE restaurante;

INSERT INTO pedidos (id_cliente, id_funcionario, id_produto, quantidade, preco, data_pedido, status_pedido) VALUES
(1, 4, 1, 2, NULL, '2024-07-01', 'Concluído'),
(3, 4, 2, 1, NULL, '2024-07-01', 'Concluído'),
(6, 7, 3, 1, NULL, '2024-07-01', 'Concluído'),
(8, 7, 4, 3, NULL, '2024-07-01', 'Concluído'),
(10, 8, 5, 2, NULL, '2024-07-02', 'Pendente'),
(15, 8, 6, 4, NULL, '2024-07-02', 'Concluído'),
(22, 4, 7, 3, NULL, '2024-07-02', 'Concluído'),
(18, 4, 8, 2, NULL, '2024-07-02', 'Concluído'),
(4, 7, 9, 5, NULL, '2024-07-02', 'Concluído'),
(6, 7, 10, 1, NULL, '2024-07-03', 'Concluído'),
(9, 8, 11, 3, NULL, '2024-07-03', 'Concluído'),
(11, 8, 12, 1, NULL, '2024-07-03', 'Concluído'),
(24, 4, 13, 2, NULL, '2024-07-03', 'Concluído'),
(27, 4, 14, 1, NULL, '2024-07-03', 'Concluído'),
(17, 7, 15, 2, NULL, '2024-07-03', 'Concluído'),
(7, 7, 16, 3, NULL, '2024-07-04', 'Concluído'),
(13, 8, 17, 2, NULL, '2024-07-04', 'Concluído'),
(25, 8, 18, 4, NULL, '2024-07-04', 'Concluído'),
(22, 4, 19, 1, NULL, '2024-07-04', 'Concluído'),
(2, 4, 20, 2, NULL, '2024-07-04', 'Concluído'),
(8, 7, 2, 1, NULL, '2024-07-04', 'Concluído'),
(11, 7, 3, 2, NULL, '2024-07-05', 'Concluído'),
(18, 8, 4, 3, NULL, '2024-07-05', 'Concluído'),
(22, 8, 5, 1, NULL, '2024-07-05', 'Concluído'),
(19, 4, 6, 4, NULL, '2024-07-05', 'Concluído'),
(28, 4, 7, 3, NULL, '2024-07-05', 'Concluído'),
(1, 7, 8, 2, NULL, '2024-07-05', 'Concluído'),
(7, 7, 9, 5, NULL, '2024-07-05', 'Concluído'),
(19, 8, 10, 1, NULL, '2024-07-05', 'Concluído'),
(15, 8, 11, 3, NULL, '2024-07-05', 'Concluído'),
(24, 4, 12, 1, NULL, '2024-07-05', 'Concluído'),
(12, 4, 13, 2, NULL, '2024-07-05', 'Concluído'),
(4, 7, 14, 1, NULL, '2024-07-05', 'Concluído'),
(9, 7, 15, 2, NULL, '2024-07-06', 'Concluído'),
(18, 8, 16, 3, NULL, '2024-07-06', 'Concluído'),
(5, 8, 17, 2, NULL, '2024-07-06', 'Pendente'),
(22, 4, 18, 4, NULL, '2024-07-06', 'Concluído'),
(14, 4, 19, 1, NULL, '2024-07-06', 'Pendente'),
(19, 7, 20, 2, NULL, '2024-07-06', 'Concluído'),
(8, 7, 1, 2, NULL, '2024-07-06', 'Pendente'),
(7, 8, 2, 1, NULL, '2024-07-06', 'Concluído'),
(4, 8, 3, 2, NULL, '2024-07-06', 'Pendente'),
(21, 4, 4, 3, NULL, '2024-07-06', 'Concluído'),
(4, 4, 5, 1, NULL, '2024-07-06', 'Pendente'),
(13, 7, 6, 4, NULL, '2024-07-06', 'Concluído'),
(25, 7, 7, 3, NULL, '2024-07-06', 'Pendente'),
(7, 8, 8, 2, NULL, '2024-07-06', 'Concluído'),
(7, 8, 8, 2, NULL, '2024-07-06', 'Concluído'), 
(12, 4, 10, 1, NULL, '2024-07-06', 'Concluído'),
(10, 4, 11, 3, NULL, '2024-07-06', 'Pendente');

USE restaurante;
SELECT id_cliente, nome FROM clientes;

USE restaurante;
SELECT id_funcionario, nome FROM funcionarios;

USE restaurante;
SELECT id_produto, nome FROM produtos;

USE restaurante;

UPDATE funcionarios
SET
    cargo = 'Garçonete',
    salario = 2700.00
WHERE
    cpf = '444.555.666-77';
    
USE restaurante;

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM pedidos WHERE data_pedido < '2024-07-06';
UPDATE pedidos
SET status_pedido = 'concluido'
WHERE data_pedido < '2024-04-06';

SET SQL_SAFE_UPDATES = 1;

USE restaurante;

DELETE FROM funcionarios
WHERE cpf = '222.333.444-55';

USE restaurante;
SELECT nome, categoria
FROM produtos
WHERE preco >30.00;

USE restaurante;
SELECT nome, telefone, data_nascimento
FROM clientes
WHERE YEAR (data_nascimento) < 1985;

ALTER TABLE info_produtos
CHANGE COLUMN ingredites ingredientes TEXT;

USE restaurante;
SELECT id_produto, ingredientes
FROM info_produtos
WHERE ingredientes LIKE "%carne%";

SELECT nome, categoria
FROM produtos
ORDER BY categoria ASC, nome ASC;

SELECT nome, preco, categoria
FROM produtos
ORDER BY preco DESC
LIMIT 5;

SELECT nome, preco
FROM produtos
WHERE categoria = 'prato principal'
ORDER BY nome ASC LIMIT 2 OFFSET 5;

USE restaurante;
CREATE TABLE backup_pedidos AS SELECT * FROM pedidos;

USE restaurante;
SELECT * FROM pedidos
WHERE id_funcionario = 4 AND status_pedido = 'pendente';

SELECT * FROM pedidos
WHERE status_pedido <> 'concluido';

SELECT * FROM pedidos
WHERE id_produto IN (1,3,5,7,8);

SELECT * FROM clientes
WHERE nome LIKE 'C%';

SELECT id_produto, ingredientes, fornecedor
FROM info_produtos
WHERE ingredientes LIKE '%carne%' OR ingredientes LIKE '%frango%';

SELECT * FROM produtos
WHERE preco BETWEEN 20 AND 30;

ALTER TABLE pedidos
MODIFY COLUMN status_pedido VARCHAR(50);

UPDATE pedidos
SET status_pedido = NULL
WHERE id_pedido = 6;

SELECT * FROM pedidos
WHERE status_pedido IS NULL;

SELECT id_pedido, IFNULL(status_pedido, 'cancelado') AS status_exibicao
FROM pedidos;

SELECT nome,cargo,salario, IF (salario > 3000, 'acima da media', 'abaixo da media') AS media_salario
FROM funcionarios;

USE restaurante;

SELECT COUNT(id_pedido) AS total_pedidos
FROM pedidos;

SELECT COUNT(distinct id_cliente) AS total_clientes
FROM pedidos;

SELECT AVG(preco) AS media_preco
FROM produtos;

SELECT MAX(preco) AS max_preco
FROM produtos;

SELECT MIN(preco) AS min_preco
FROM produtos;

SELECT nome, preco,
RANK() OVER(ORDER BY preco DESC) AS rank_preco
FROM produtos ORDER BY preco DESC
LIMIT 5;

SELECT categoria, AVG(preco) AS preco_medio_categoria
FROM produtos GROUP BY categoria;

SELECT fornecedor,
COUNT(id_produto) AS quantidade_de_produto_por_fornecedor
FROM info_produtos
GROUP BY fornecedor
ORDER BY quantidade_de_produto_por_fornecedor;

SELECT fornecedor, COUNT(id_produto) AS quantidade_produto
FROM info_produtos
GROUP BY fornecedor
HAVING COUNT(id_produto) > 1
ORDER BY quantidade_produto DESC;

SELECT id_cliente, COUNT(id_pedido) AS total_pedidos
FROM pedidos
GROUP BY id_cliente
HAVING COUNT(id_pedido) = 1;

USE restaurante;

SELECT p.id_produto, p.nome, p.descricao, ip.ingredientes
FROM produtos p 
JOIN info_produtos ip ON p.id_produto = ip.id_produto;

SELECT p.id_pedido, p.quantidade, p.data_pedido, c.nome AS nome_cliente, c.email
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id_cliente;

SELECT p.id_produto, p.quantidade, p.data_pedido, c.nome AS nome_cliente, c.email, f.nome AS nome_funcionario
FROM pedidos p
JOIN clientes c ON c.id_cliente = p.id_cliente
JOIN funcionarios f ON p.id_funcionario = f.id_funcionario;

SELECT p.id_pedido, p.quantidade, p.data_pedido, c.nome AS cliente, c.email, f.nome AS funcionario, pr.nome AS produto, pr.preco
FROM pedidos p 
JOIN clientes c ON p.id_cliente = c.id_cliente
JOIN funcionarios f ON p.id_funcionario = f.id_funcionario
JOIN produtos pr ON p.id_produto = pr.id_produto;

SELECT c.nome, p.id_pedido, p.data_pedido, p.status_pedido
FROM clientes c
JOIN pedidos p ON p.id_cliente = c.id_cliente
WHERE status_pedido = 'pendente'
ORDER BY p.id_pedido DESC;

SELECT c.id_cliente, c.nome, c.email
FROM clientes c
LEFT JOIN pedidos p ON c.id_cliente = p.id_cliente
WHERE p.id_pedido IS NULL;

SELECT p.id_pedido, p.quantidade, pr.preco, (p.quantidade * pr.preco) AS preco_total
FROM pedidos p
JOIN produtos pr ON p.id_produto = pr.id_produto;

USE restaurante;

CREATE VIEW resumo_pedido AS
SELECT p.id_pedido, p.quantidade, p.data_pedido, c.nome AS nome_cliente, c.email, f.nome AS funcionario, pr.nome AS nome_produto, pr.preco
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id_cliente
JOIN funcionarios f ON p.id_funcionario = f.id_funcionario
JOIN produtos pr ON p.id_produto = pr.id_produto;

SELECT * FROM resumo_pedido;

SELECT id_pedido, nome_cliente, (quantidade * preco) AS total_por_pedido
FROM resumo_pedido;


CREATE OR REPLACE VIEW resumo_pedido AS
SELECT p.id_pedido, p.quantidade, p.data_pedido, c.nome AS nome_cliente, c.email, f.nome AS funcionario, pr.nome AS nome_produto, pr.preco, (p.quantidade * pr.preco) AS total_por_pedido
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id_cliente
JOIN funcionarios f ON p.id_funcionario = f.id_funcionario
JOIN produtos pr ON p.id_produto = pr.id_produto;

SELECT * FROM resumo_pedido;

EXPLAIN 
SELECT id_pedido, nome_cliente, (quantidade * preco) AS total_por_pedido
FROM resumo_pedido;

DELIMITER // 

CREATE FUNCTION buscar_ingredientes_produtos(p_id_produto INT)
RETURNS TEXT
READS SQL DATA
DETERMINISTIC
BEGIN
DECLARE v_ingredientes TEXT;
SELECT ingredientes
INTO v_ingredientes
FROM info_produtos
WHERE id_produto = p_id_produto;

RETURN v_ingredientes;
END //
DELIMITER ;

SELECT buscar_ingredientes_produtos(10);

DELIMITER //
CREATE FUNCTION media_pedido(p_id_pedido INT)
RETURNS VARCHAR(255)
READS SQL DATA
DETERMINISTIC
BEGIN
DECLARE v_total_pedido DECIMAL(10,2);
DECLARE v_media_todos_pedidos DECIMAL(10,2);
DECLARE v_mensagem VARCHAR(255);

SELECT (p.quantidade * pr.preco)
INTO v_total_pedido
FROM pedidos p 
JOIN produtos pr ON p.id_produto = pr.id_produto
WHERE p.id_pedido = p_id_pedido;

SELECT AVG(p.quantidade * prod.preco)
    INTO v_media_todos_pedidos
    FROM pedidos AS p
    JOIN produtos AS prod ON p.id_produto = prod.id_produto;
    
	
      IF v_total_pedido IS NULL THEN
        SET v_mensagem = 'Pedido não encontrado ou dados insuficientes para cálculo do total.';
    ELSEIF v_total_pedido > v_media_todos_pedidos THEN
        SET v_mensagem = CONCAT('O total do pedido (R$', v_total_pedido, ') está ACIMA da média de todos os pedidos (R$', v_media_todos_pedidos, ').');
    ELSEIF v_total_pedido < v_media_todos_pedidos THEN
        SET v_mensagem = CONCAT('O total do pedido (R$', v_total_pedido, ') está ABAIXO da média de todos os pedidos (R$', v_media_todos_pedidos, ').');
    ELSE
        SET v_mensagem = CONCAT('O total do pedido (R$', v_total_pedido, ') é IGUAL à média de todos os pedidos (R$', v_media_todos_pedidos, ').');
    END IF;

    RETURN v_mensagem;
END //
DELIMITER ;

SELECT media_pedido(5); 
SELECT media_pedido(6);

