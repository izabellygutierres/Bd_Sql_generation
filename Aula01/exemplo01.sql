CREATE DATABASE db_quitanda;

USE db_quitanda; -- seleciona o banco de dados

CREATE TABLE tb_produtos( -- criar uma tabela e seus indices
id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    quantidade INT,
    datavalidade DATE,
    preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

-- inserir registros/ produtos 
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("tomate",100, "2023-12-15", 8.00);

-- visualizar os registros
SELECT  * FROM tb_produtos;

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
VALUES ("pêra",500, "2023-12-15", 2.99);

-- Alterar a estrutura da tabela
ALTER TABLE tb_produtos MODIFY preco DECIMAL (6,2);

-- Alterar os dados da tabela

UPDATE tb_produtos set preco = 2.99 WHERE id = 6;