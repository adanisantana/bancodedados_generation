CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    produto VARCHAR (255) NOT NULL,
    quantidade INT NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    cor VARCHAR(100)
);

INSERT INTO tb_produtos(produto, quantidade, preco, cor)
VALUES("celular", 1500, 2500, "preta");

INSERT INTO tb_produtos(produto, quantidade, preco, cor)
VALUES("celular", 400, 1500, "prata");

INSERT INTO tb_produtos(produto, quantidade, preco, cor)
VALUES("computador", 1830, 3500, "branca");

INSERT INTO tb_produtos(produto, quantidade, preco, cor)
VALUES("tablet", 320, 700, "branca");

INSERT INTO tb_produtos(produto, quantidade, preco, cor)
VALUES("tablet", 150, 700, "preta");

SELECT * FROM tb_produtos 
WHERE quantidade>500;

SELECT * FROM tb_produtos 
WHERE quantidade<500;

