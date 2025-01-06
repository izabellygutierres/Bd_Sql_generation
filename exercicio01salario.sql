-- exercicio 01 - RH 

USE db_quitanda; -- seleciona o banco de dados

CREATE TABLE tb_colaboradores( -- criar uma tabela e seus atributos
	id BIGINT AUTO_INCREMENT ,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR (50),
    salario DECIMAL (10,2) NOT NULL,
    data_admissão DATE,
    PRIMARY KEY (id)
); 

ALTER TABLE tb_colaboradores change data_admissão data_admissao DATE;

INSERT INTO tb_colaboradores (nome, cargo, salario, data_admissao) values 
('Ana Silva', 'Analista', 2500.00, '2023-01-15'),
 ('Carlos Pereira', 'Desenvolvedor', 1800.00, '2022-03-22'), 
('Mariana Costa', 'Gerente', 3000.00, '2021-07-01'), 
('João Souza', 'Técnico', 2200.00, '2020-11-10'),
('Fernanda Lima', 'Auxiliar Administrativo', 1500.00, '2019-05-05');

SELECT  * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

select * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET cargo = 'Consultora' where id = 1;

update tb_colaboradores set salario = '3000.00' where id= 1;
