CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR (100),
    descricao_categoria VARCHAR(255)
);

CREATE TABLE tb_pizzas(
	id_pizza BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL (6,2),
    tamanho VARCHAR(255),
    ingredientes VARCHAR(255),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);
INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES
  ('Pizzas Vegetarianas', 'Pizzas elaboradas com ingredientes 100% vegetarianos'),
  ('Pizzas de Carne', 'Pizzas com diversos tipos de carne'),
  ('Pizzas Doces', 'Pizzas com sabores doces e ingredientes inusitados'),
  ('Pizzas Especiais', 'Pizzas com combinações de ingredientes exclusivas'),
  ('Pizzas Sem Glúten', 'Pizzas elaboradas com massa sem glúten');

SELECT * FROM tb_categorias; 
  
INSERT INTO tb_pizzas (nome, preco, tamanho, ingredientes, id_categoria)
VALUES
  ('Margherita', 25.99, 'Média', 'Molho de tomate, mussarela, manjericão', 1),
  ('Pepperoni', 32.99, 'Grande', 'Molho de tomate, mussarela, pepperoni', 2),
  ('Quatro Queijos', 35.99, 'Grande', 'Molho de tomate, mussarela, gorgonzola, parmesão, catupiry', 1),
  ('Calabresa', 29.99, 'Média', 'Molho de tomate, mussarela, calabresa', 2),
  ('Frango com Catupiry', 34.99, 'Grande', 'Molho de tomate, mussarela, frango, catupiry', 2),
  ('Portuguesa', 38.99, 'Grande', 'Molho de tomate, mussarela, presunto, ovos, cebola, azeitona', 2),
  ('Vegetariana', 28.99, 'Média', 'Molho de tomate, mussarela, tomate, cebola, azeitona, pimentão', 1),
  ('Doce de Leite com Nutella', 22.99, 'Pequena', 'Massa de pizza doce, doce de leite, Nutella', 3);
  
INSERT INTO tb_pizzas(nome, preco, tamanho, ingredientes, id_categoria)
VALUES
	('Carne Seca com Queijo', 47.00, 'Média', 'Molho de tomate, mussarela, carne seca, azeitona',2),
	('Baininha', 49.00, 'Grande','Molho de tomate, calabresa, cebola, azeitona', 2);

SELECT * FROM tb_pizzas WHERE preco> 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT nome, preco, tamanho , tb_categorias.nome_categoria
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT nome, preco, tamanho , tb_categorias.nome_categoria
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome_categoria = 'Pizzas Vegetarianas';

