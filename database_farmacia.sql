CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id_categorias BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255),
    descricao_categoria VARCHAR(255)
);

CREATE TABLE tb_produtos(
	id_produto BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255),
    preco DECIMAL(6,2),
    estoque INT,
    id_categorias BIGINT,
    FOREIGN KEY (id_categorias) REFERENCES tb_categorias(id_categorias)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES
  ('Medicamentos', 'Remédios com prescrição médica e sem prescrição'),
  ('Beleza', 'Produtos para cuidados com a pele, cabelo e maquiagem'),
  ('Higiene Pessoal', 'Produtos para higiene bucal, corporal e capilar'),
  ('Alimentos', 'Alimentos para bebês, suplementos vitamínicos e dietéticos'),
  ('Perfumes', 'Perfumes masculinos e femininos');
  
INSERT INTO tb_produtos (nome_produto, preco, estoque, id_categorias)
VALUES
  ('Paracetamol 500mg', 5.99, 100, 1),
  ('Aspirina 81mg', 4.50, 80, 1),
  ('Protetor Solar FPS 30', 29.99, 50, 2),
  ('Shampoo Anticaspa', 19.90, 30, 3),
  ('Pasta de Dente', 7.99, 120, 3),
  ('Leite em Pó', 35.90, 25, 4),
  ('Vitamina C', 12.99, 40, 4),
  ('Perfume Masculino', 99.90, 20, 5);
  
  SELECT * FROM tb_produtos 
  WHERE preco > 50;
  
  SELECT * FROM tb_produtos
  WHERE preco BETWEEN 5 AND 100;
  
   SELECT * FROM tb_produtos
   WHERE nome_produto LIKE '%c%';
   
   SELECT nome_produto, preco, tb_categorias.nome_categoria
   FROM tb_produtos INNER JOIN tb_categorias
   ON tb_produtos.id_categorias = tb_categorias.id_categorias;
   
   SELECT nome_produto, preco, tb_categorias.nome_categoria
   FROM tb_produtos INNER JOIN tb_categorias
   ON tb_produtos.id_categorias = tb_categorias.id_categorias
   WHERE tb_categorias.nome_categoria = 'Medicamentos';
   
  
