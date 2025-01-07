-- Crie um banco de dados para um serviço de uma Farmácia (ATIVIDADE 03)

CREATE DATABASE db_farmacia_bem_estar; -- criando o banco de dados da farmacia

USE db_farmacia_bem_estar; -- utilizar o banco de dados criado

-- criação da tabela tb_categorias
CREATE TABLE tb_categorias (
	id_categoria BIGINT  AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL, 
    descricao TEXT
    );
-- criação da tabela produto
CREATE TABLE tb_produtos(
	id_produto BIGINT auto_increment primary KEY,
    nome_produto VARCHAR(100) NOT NULL,
    descricao_produto TEXT,
    preco DECIMAL (10, 2) NOT NULL,
    estoque INT NOT NULL,
    id_categoria BIGINT,
    foreign key (id_categoria) references tb_categorias(id_categoria)
);

-- Insere 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Produtos prescritos e de venda livre para condição de saúde. '),
('Infantil', 'Produtos para bebês e crianças. '),
('Vitaminas', 'Suplementos vitamínicos e minerais. '),
('Higiene', 'Produtos para higiene pessoal. '),
('Beleza', 'Produtos de beleza e cosméticos. ');

SELECT * FROM tb_categorias

-- Insere 8 registros na tabela tb_produtos
INSERT INTO tb_produtos (nome_produto, descricao_produto, preco, estoque, id_categoria) VALUES
('Shampoo Anticaspa', 'Shampoo para tratamento da caspa.', 25.00, 30, 5),
('Creme Hidratante', 'Hidratante para pele seca.', 60.00, 20, 5),
('Whey Protein', 'Suplemento para ganho de massa muscular.', 150.00, 15, 3),
('Escova Dental', 'Escova dental macia.', 5.50, 200, 4),
('Fraldas infantil', 'Fraldas descartáveis. ', 70.00, 25, 2),
('Loção Infantil', 'Loção hidratante para bebês.', 40.00, 50, 2),
('Paracetamol', 'Medicamento analgésico e antitérmico.', 15.00, 50, 1),
('Dipirona', 'Medicamento para alívio da dor e febre.', 10.00, 100, 1);

SELECT * FROM tb_produtos

-- produtos com valor maior que $50.00
SELECT * FROM tb_produtos where preco > 50.00;

-- produtos com valor esteja no intervalo R$ 5,00 e R$ 60,00.
SELECT * FROM tb_produtos where preco BETWEEN 5.00 AND 60.00;

-- buscando todos os produtos que possuam a letra C no atributo nome. ( usando LIKE)
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

-- unir dados das tabelas tb_produtos e tb_categorias
SELECT p.*, c.nome, c.descricao
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria;

--  filtrando por categoria específica (Beleza)
SELECT p.*, c.nome, c.descricao
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id_categoria
WHERE c.nome = 'Beleza';





