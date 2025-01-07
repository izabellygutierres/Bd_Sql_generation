-- Exercicio 03 - REGISTRO DE ALUNOS

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR (100) NOT NULL,
    data_nascimento DATE NOT NULL,
    turma VARCHAR (10),
    nota DECIMAL (4, 2) NOT NULL,
    PRIMARY KEY (id)
)
-- Listagem de dados inserido
INSERT INTO tb_estudantes ( nome, data_nascimento, turma, nota) values ('Pedro Silva', '2005-04-10', '8A', 8.5), 
('Maria Oliveira', '2006-08-25', '7B', 6.8), 
('Lucas Santos', '2005-02-15', '8A', 7.2), 
('Ana Costa', '2006-11-30', '7B', 9.0), 
('Beatriz Lima', '2005-06-22', '8A', 5.5), 
('João Almeida', '2006-01-10', '7A', 7.8), 
('Carla Rodrigues', '2006-05-18', '7B', 6.2), 
('Felipe Souza', '2005-09-20', '8A', 8.0);

SELECT * FROM tb_estudantes;
-- busca de nota maior e menor
SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;
-- atualização de nota
update tb_estudantes set nota = 7.5 where id = 2;