INSERT INTO usuarios (nome, nascimento, email, senha, data_cadastro) VALUES
('João Silva', '1990-05-15', 'joao.silva@email.com', 'senha123', '2024-08-25'),
('Maria Oliveira', '1985-10-22', 'maria.oliveira@email.com', 'senha456', '2024-08-26'),
('Carlos Souza', '1992-02-10', 'carlos.souza@email.com', 'senha789', '2024-08-27');

INSERT INTO planos (tipo, valor, descricao) VALUES
('Básico', 19.99, 'Acesso a uma tela em resolução SD'),
('Padrão', 29.99, 'Acesso a duas telas simultâneas em resolução HD'),
('Premium', 39.99, 'Acesso a quatro telas simultâneas em resolução 4K');

INSERT INTO assinaturas (id_usuario_assinaturas, id_plano_assinaturas, data_inicio) VALUES
(1, 1, '2024-08-25'),
(2, 2, '2024-08-26'),
(3, 3, '2024-08-27');

INSERT INTO catalogo (titulo, genero, lancamento, tipo, duracao) VALUES
('The Office', 'Comédia', '2005-03-24', 'Série', 30),
('Breaking Bad', 'Drama', '2008-01-20', 'Série', 47),
('Inception', 'Ficção Científica', '2010-07-16', 'Filme', 148),
('Friends', 'Comédia', '1994-09-22', 'Série', 22),
('Interstellar', 'Ficção Científica', '2014-11-07', 'Filme', 169);

INSERT INTO catalogo_staff (id_catalogo_staff, nome, funcao) VALUES
(1, 'Steve Carell', 'Ator'),
(2, 'Bryan Cranston', 'Ator'),
(3, 'Leonardo DiCaprio', 'Ator'),
(4, 'Jennifer Aniston', 'Atriz'),
(5, 'Christopher Nolan', 'Diretor');


INSERT INTO usuarios (nome, nascimento, email, senha, data_cadastro) VALUES
('João Silva', '1990-05-15', 'joao.silva@email.com', 'senha123', '2024-08-25'),
('Maria Oliveira', '1985-10-22', 'maria.oliveira@email.com', 'senha456', '2024-08-26'),
('Carlos Souza', '1992-02-10', 'carlos.souza@email.com', 'senha789', '2024-08-27');

INSERT INTO assistidos (id_usuario_assistidos, id_catalogo_assistidos, hora_inicio, hora_fim) VALUES
(1, 1, '2024-08-27 19:00:00', '2024-08-27 19:30:00'),
(2, 3, '2024-08-27 20:00:00', '2024-08-27 22:28:00'),
(3, 5, '2024-08-27 21:00:00', '2024-08-27 23:49:00');

