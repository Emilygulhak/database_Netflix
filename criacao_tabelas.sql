CREATE DATABASE netflix;

USE netflix;

CREATE TABLE planos (
id_plano INT PRIMARY KEY AUTO_INCREMENT, 
tipo varchar(200),
valor float,
descricao varchar(200)
);

CREATE TABLE catalogo (
id_catalogo INT PRIMARY KEY AUTO_INCREMENT, 
titulo varchar(200),
genero varchar(200),
lancamento DATE,
tipo varchar(50),
duracao int
);

CREATE TABLE catalogo_staff (
id_staff INT PRIMARY KEY AUTO_INCREMENT, 
id_catalogo_staff INT,
nome varchar(200),
funcao varchar(50),
FOREIGN KEY (id_catalogo_staff) REFERENCES catalogo(id_catalogo)
);

 

CREATE TABLE usuarios (
id_usuario INT PRIMARY KEY AUTO_INCREMENT, 
nome varchar(200),
nascimento date,
email varchar(200),
senha varchar(20),
data_cadastro date
);

CREATE TABLE assistidos (
id INT PRIMARY KEY AUTO_INCREMENT, 
id_usuario_assistidos int,
id_catalogo_assistidos int,
hora_inicio datetime,
hora_fim datetime,
FOREIGN KEY (id_usuario_assistidos) REFERENCES usuarios(id_usuario),
FOREIGN KEY (id_catalogo_assistidos) REFERENCES catalogo(id_catalogo)
);

CREATE TABLE assinaturas (
id INT PRIMARY KEY AUTO_INCREMENT, 
id_usuario_assinaturas int,
id_plano_assinaturas int,
data_inicio date,
FOREIGN KEY (id_usuario_assinaturas) REFERENCES usuarios(id_usuario),
FOREIGN KEY (id_plano_assinaturas) REFERENCES planos(id_plano)
);







