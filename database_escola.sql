CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    matricula BIGINT,
    email VARCHAR(255),
    notas DECIMAL(6,2)    
);

INSERT INTO tb_estudantes(nome, matricula, email, notas)
VALUES("Laura", "12345", "laurinha@gmail.com", 9.5);

INSERT INTO tb_estudantes(nome, matricula, email, notas)
VALUES("Sabrina", "12346", "sabrina@gmail.com", 7.0);

INSERT INTO tb_estudantes(nome, matricula, email, notas)
VALUES("Pablo", "12347", "pablo@gmail.com", 3.0);

INSERT INTO tb_estudantes(nome, matricula, email, notas)
VALUES("Carlos", "12348", "carlos@gmail.com", 5.0);

INSERT INTO tb_estudantes(nome, matricula, email, notas)
VALUES("Marcia", "12349", "marcia@gmail.com", 10);

INSERT INTO tb_estudantes(nome, matricula, email, notas)
VALUES("Patricia", "12310", "patricia@gmail.com", 6.0);

INSERT INTO tb_estudantes(nome, matricula, email, notas)
VALUES("Ulisses", "12311", "ulisses@gmail.com", 9.0);

INSERT INTO tb_estudantes(nome, matricula, email, notas)
VALUES("Lara", "12322", "lara@gmail.com", 7.5);

SELECT * FROM tb_estudantes
WHERE notas > 7;

SELECT * FROM tb_estudantes
WHERE notas < 7;

UPDATE tb_estudantes SET notas = 5.5 WHERE id = 3;



 