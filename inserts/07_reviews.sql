-- -----------------------------------------------------
-- Populando banco de dados de Reviews
-- INSERT
-- -----------------------------------------------------
INSERT INTO
  `loja_livros`.`Reviews` (`usuario_CPF`, `nota`, `comentario`, `ISBN`)
VALUES
  ('07630178840', 5, 'Muito Bom!', '9788532517708'),
  ('49664926701', 5, 'Muito Bom!', '9788323799825'),
  ('06675799665', 3, 'Cansativo', '9788532518798'),
  ('00919020968', 3, 'Mediano', '9780689859397'),
  ('74374501002', 5, 'Exelente recomendaria!', '9780689859403'),
  ('98104275577', 2, 'Meia Boca', '9786584824089'),
  ('78901234567', 1, 'Serve nem como papel higienico!', '9783570165263'),
  ('89012345678', 5, 'Obra prima!', '9788551007343'),
  ('90123456789', 1, 'Uma criança de 5 anos faz melhor!', '9788551007350'),
  ('66896742232', 2, 'Prota bem desenvolvido, mas historia bem mais ou menos', '9788551007367'),
  ('64599370282', 4, 'Começo chato, mas vai melhorando!', '9788551007367'),
  ('34278956886', 5, 'Sé loko compensa!', '9788551007381'),
  ('56756756756', 1, 'Muito Bom!', '9786555320213'),
  ('67867867867', 3, 'Deveras Intrigrante, é mediano', '9786555320350'),
  ('89089089089', 4, 'Otima!', '9788594318619'),
  ('90190190190', 1, 'Oque o autor estava pensando?', '9786555114744'),
  ('12345678901', 1, 'Começo legal, mas final cagado!', '9780008627800'),
  ('98765432100', 3, 'Mediano em todos os aspectos', '9780001113489'),
  ('19283746500', 4, 'Otima historia recomendaria para amigose familiares!', '9780507653400'),
  ('56473829100', 3, 'legalzin', '9780507900182');
   -- CPF        NOTA  COMENTARIO    ISBN