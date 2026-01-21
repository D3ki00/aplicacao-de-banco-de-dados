USE DB_GABRIEL_HIDEKI;

DROP TABLE IF EXISTS ESPORTES;

CREATE TABLE ESPORTES (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  NOME VARCHAR(100),
  QUANTIDADE_DE_PARTICIPANTES INT,
  DETALHES VARCHAR(100),
  DIFICULDADE VARCHAR(100)
);

INSERT INTO ESPORTES (NOME, QUANTIDADE_DE_PARTICIPANTES, DETALHES, DIFICULDADE)
VALUES 
  ('Basquete', 10, 'Jogo da bola laranja', 'Dificuldade média'),
  ('Vôlei', 12, 'Jogo com rede', 'Dificuldade média'),
  ('Esgrima', 2, 'Combate com espadinha fina', 'Dificuldade difícil'),
  ('Surf', 1, 'Esporte com prancha', 'Dificuldade difícil'),
  ('Capoeira', 2, 'Luta brasileira com música', 'Dificuldade média');





