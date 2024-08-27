-- criação do banco de dados
CREATE DATABASE netflix;


-- usar o banco de dados que quero trabalhar
use netflix;


-- criação das tabelas 

CREATE TABLE planos (
id INT PRIMARY KEY auto_increment,
tipo VARCHAR(200),
valor FLOAT,
descricao VARCHAR(200)
);

CREATE TABLE catalogo_staff (
id INT PRIMARY KEY AUTO_INCREMENT,
id_catalogo INT,
nome VARCHAR(200),
funcao VARCHAR(200)
);

CREATE TABLE catalogo (
id INT PRIMARY KEY auto_increment,
titulo VARCHAR(200),
genero VARCHAR(200),
lancamento date,
tipo VARCHAR(50),
duracao VARCHAR(10)
);

-- como realizei a criação de uma tabela, que possuia um relacionamento adicionei com o alter table o relacionamento FK.
ALTER TABLE catalogo_staff ADD CONSTRAINT FOREIGN KEY(id_catalogo) REFERENCES catalogo (id);

CREATE TABLE usuarios (
id INT PRIMARY KEY auto_increment,
nome VARCHAR(200),
nascimento date,
email VARCHAR(200),
senha VARCHAR(20),
data_cadastro date
);

CREATE TABLE assistidos (
id INT PRIMARY KEY auto_increment,
id_usuario INT,
id_catalogo INT,
hora_inicio datetime,
hora_fim datetime,
FOREIGN KEY (id_usuario) REFERENCES usuarios (id),
FOREIGN KEY (id_catalogo) REFERENCES catalogo (id)
);

CREATE TABLE assinaturas (
id INT PRIMARY KEY auto_increment,
id_usuario INT,
id_plano INT,
data_inicio date,
FOREIGN KEY (id_usuario) REFERENCES usuarios (id),
FOREIGN KEY (id_plano) REFERENCES planos (id)
);






