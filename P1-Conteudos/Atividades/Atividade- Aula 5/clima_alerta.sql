--========== Populando

INSERT INTO Nivel (idNivel, nivel) VALUES 
(1, 'Baixo'),
(2, 'Médio'),
(3, 'Alto');

INSERT INTO Localizacao (idLocalizacao, latitude, longitude, cidade, estado) VALUES 
(1, -23.3053, -45.9658, 'Jacareí', 'SP'),
(2, -22.5050, -43.1780, 'Petrópolis', 'RJ'),
(3, -26.9196, -49.0660, 'Blumenau', 'SC');

INSERT INTO TipoEvento (idTipoEvento, nome, descricao) VALUES 
(1, 'Queima isolada', 'Queimada antrôpica'),
(2, 'Deslizamento', 'Movimento de massa de terra ou rocha em encostas'),
(3, 'Incêndio Florestal', 'Incêndio sem controle');

INSERT INTO Usuario (idUsuario, nome, email, senhaHash) VALUES 
(1, 'João Silva', 'joao@email.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(2, 'Maria Souza', 'maria@email.com', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4'),
(3, 'Carlos Lima', 'carlos@email.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5'),
(4, 'Jeff Lima', 'jef@gmail.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5e4867efdc4fb');

INSERT INTO statusEvento (idStatus, nomeStatus) VALUES 
(1, 'Ativo'),
(2, 'Em Observação'),
(3, 'Resolvido');

INSERT INTO Evento (idEvento, titulo, descricao, datatHora, status, idTipoEvento, idLocalizacao) VALUES 
(1, 'Queima isolada', 'Avenida principal intransitável devido à chuva', '2026-03-03 10:00:00', 1, 1, 1),
(2, 'Risco no Morro da Oficina', 'Terra cedendo próximo a residências', '2026-03-02 15:30:00', 2, 2, 2),
(3, 'Fogo na beira da BR-324', 'Fumaça atrapalhando a visibilidade dos motoristas', '2026-03-01 14:00:00', 3, 3, 3);

INSERT INTO Relato (idRelato, texto, dataHora, idEvento, idUsuario) VALUES 
(1, 'Já tem duas horas de muita fumaça.', '2026-03-03 10:15:00', 1, 1),
(2, 'Ouvi um barulho muito forte de terra caindo durante a madrugada.', '2026-03-02 15:45:00', 2, 2),
(3, 'Os bombeiros já chegaram e o fogo está diminuindo.', '2026-03-01 16:00:00', 3, 3);

INSERT INTO Alerta (idAlerta, mensagem, dataHora, idEvento, idNivel) VALUES 
(1, 'Atenção: Evitem o tráfego na região central de Jacareí.', '2026-03-03 10:20:00', 1, 2), 
(2, 'ALERTA MÁXIMO: Evacuação imediata das casas na encosta.', '2026-03-02 16:00:00', 2, 3), 
(3, 'Rodovia liberada. Visibilidade normalizada.', '2026-03-01 18:00:00', 3, 1); 

--============================= Consultas ===========
select titulo from Evento;
select titulo, datatHora from Evento where status >1;
select * from relato where datahora='2026-03-03 10:15:00';
select u.nome from usuario u,relato r where r.idusuario =u.idusuario;  
