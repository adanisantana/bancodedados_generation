CREATE DATABASE RH_EMPRESA;

USE RH_EMPRESA;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    salario DECIMAL(6,2) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    departamento VARCHAR (100)
);

INSERT INTO tb_colaboradores (nome, salario, cargo, departamento)
VALUES ("Maria", 3000,"Analista de RH","RH");

INSERT INTO tb_colaboradores (nome, salario, cargo, departamento)
VALUES ("Lúcia", 4000,"Administradora","ADM");

INSERT INTO tb_colaboradores (nome, salario, cargo, departamento)
VALUES ("Flávio", 2000,"Aux. de Marketing","MKT");

INSERT INTO tb_colaboradores (nome, salario, cargo, departamento)
VALUES ("Paulo", 1500,"Aux. de Escritório","ADM");

INSERT INTO tb_colaboradores (nome, salario, cargo, departamento)
VALUES ("Sofia", 3000,"Gerente de Marketing","MKT");

INSERT INTO tb_colaboradores (nome, salario, cargo, departamento)
VALUES ("Gabriela", 4000,"Analista de TI ","TI");

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

