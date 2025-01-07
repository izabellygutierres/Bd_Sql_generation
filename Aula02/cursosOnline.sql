-- banco de dados para uma plataforma de Cursos Online (EAD) (ATIVIDADE 06)

-- Criação do banco de dados
CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

-- criação de tabela de categorias
CREATE TABLE tb_categorias (
	id_categoria BIGINT auto_increment primary key,
    nome_categoria VARCHAR (100) NOT NULL,
    descricao_categoria TEXT);
    
-- criação da tabela de cursos 
CREATE TABLE tb_cursos (
	id_curso BIGINT auto_increment primary key,
    nome_curso VARCHAR(100) NOT NULL,
    descricao_curso TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    duracao_horas INT NOT NULL,
    id_categoria BIGINT,
	foreign key (id_categoria) references tb_categorias(id_categoria));
    
--  5 registros na tabela tb_categorias
INSERT INTO tb_categorias (nome_categoria ,  descricao_categoria) VALUES
('Tecnologia', 'Cursos relacionados à área de tecnologia e programação.'),
('Negócios', 'Cursos voltados para empreendedorismo e gestão.'),
('Design', 'Cursos sobre design gráfico e UX/UI.'),
('Idiomas', 'Cursos para aprendizado de idiomas estrangeiros.'),
('Marketing', 'Cursos de marketing digital e estratégias publicitárias.');

SELECT * FROM tb_categorias; -- validação de conteúdo

-- 8 registros na tabela tb_cursos
INSERT INTO tb_cursos (nome_curso, descricao_curso, preco, duracao_horas, id_categoria) VALUES
('Introdução à Programação', 'Curso básico sobre lógica de programação.', 450.00, 40, 1),
('Java Avançado', 'Curso avançado de desenvolvimento em Java.', 750.00, 60, 1),
('Gestão de Projetos', 'Curso sobre metodologias ágeis e gestão de projetos.', 900.00, 50, 2),
('Design Gráfico Completo', 'Curso para aprender as principais ferramentas de design.', 600.00, 45, 3),
('Inglês Intermediário', 'Curso para aprimorar o inglês em nível intermediário.', 400.00, 30, 4),
('Marketing Digital', 'Curso sobre estratégias de marketing digital.', 500.00, 35, 5),
('Photoshop Avançado', 'Curso para profissionais que querem dominar o Photoshop.', 850.00, 40, 3),
('Espanhol Básico', 'Curso introdutório de espanhol.', 350.00, 25, 4);
    
SELECT * FROM tb_cursos; -- validação de conteúdo

-- retorne todos os cursos cujo valor seja maior do que R$ 500,00.
SELECT * FROM tb_cursos where preco > 500.00;

-- que retorne todos os cursos cujo valor esteja no intervalo R$ 600,00 e R$ 1000,00.
SELECT * FROM tb_cursos where preco BETWEEN 600.00 and 1000.00;

-- buscando todos os cursos que possuam a letra J no atributo nome.
SELECT * FROM tb_cursos WHERE nome_curso LIKE '%J%';

-- unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias.
SELECT c.*, cat.nome_categoria, cat.descricao_categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.id_categoria = cat.id_categoria;

-- filtrando por categoria específica (tecnologia)
SELECT c.*, cat.nome_categoria, cat.descricao_categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.id_categoria = cat.id_categoria
WHERE cat.nome_categoria = 'Tecnologia';




    