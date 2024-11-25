CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagens(
	id_personagem BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (255),
    fase INT,
    vida INT,
    pontos INT 
);

CREATE TABLE tb_classes(
	id_classes BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR (255),
    descricao VARCHAR(255)
);

INSERT INTO tb_classes (tipo, descricao)
VALUES ("Mago", "poderes curativos");

INSERT INTO tb_classes (tipo, descricao)
VALUES ("Mago", "poderes destrutivos");

INSERT INTO tb_classes (tipo, descricao)
VALUES ("Guerreiro", "poderes destrutivos");

INSERT INTO tb_classes (tipo, descricao)
VALUES ("Guerreiro", "defensiva");

INSERT INTO tb_classes (tipo, descricao)
VALUES ("Bruxa", "curativo e destrutivo");


INSERT INTO tb_personagens (nome, fase, vida, pontos)
VALUES ("user_f", 2, 3, 120);

INSERT INTO tb_personagens (nome, fase, vida, pontos)
VALUES ("user_g", 1, 4, 1800);

INSERT INTO tb_personagens (nome, fase, vida, pontos)
VALUES ("user_a", 1, 4, 50);

INSERT INTO tb_personagens (nome, fase, vida, pontos)
VALUES ("user_b", 5, 2, 3000);

INSERT INTO tb_personagens (nome, fase, vida, pontos)
VALUES ("user_c", 1, 3, 100);

INSERT INTO tb_personagens (nome, fase, vida, pontos)
VALUES ("user_d", 2, 3, 150);

INSERT INTO tb_personagens (nome, fase, vida, pontos)
VALUES ("user_e", 3, 3, 200);

INSERT INTO tb_personagens (nome, fase, vida, pontos)
VALUES ("user_h", 4, 4, 1700);
 
ALTER TABLE tb_personagens add id_classe BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_id_classe
FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classes);

ALTER TABLE tb_personagens DROP COLUMN id_classes;

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens
WHERE pontos > 2000;

SELECT * FROM tb_personagens
WHERE pontos BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%c';

SELECT nome, fase, pontos, tb_classes.tipo
FROM tb_personagens INNER JOIN tb_classes;

SELECT nome, fase, pontos, tb_classes.tipo
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id_classes
GROUP BY tb_classes.tipo;


