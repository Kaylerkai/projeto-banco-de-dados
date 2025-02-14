-- João Silva: Compra 3 livros
INSERT INTO `loja_livros`.`Pedidos` (`usuario_CPF`, `qnt_vendida`, `ISBN`, `data_vendido`)
VALUES 
  ('07630178840', 5, '9788532517708', '2025-02-14'),
  ('07630178840', 9, '9788323799825', '2025-02-14'),
  ('07630178840', 30, '9788532518798', '2025-02-14');

INSERT INTO `loja_livros`.`Pedidos_Item` (`data_pedido`, `usuario_CPF`, `pedido_ID`)
VALUES 
  ('2025-02-14', '07630178840', 1),
  ('2025-02-14', '07630178840', 2),
  ('2025-02-14', '07630178840', 3);

UPDATE `loja_livros`.`Pedidos_Item`
SET status = 'Concluído' WHERE pedido_ID IN (1, 2, 3);

-- Maria Oliveira: Compra pendente
INSERT INTO `loja_livros`.`Pedidos` (`usuario_CPF`, `qnt_vendida`, `ISBN`, `data_vendido`)
VALUES 
  ('49664926701', 3, '9780689859397', '2025-02-14'),
  ('49664926701', 5, '9780689859403', '2025-02-14');

INSERT INTO `loja_livros`.`Pedidos_Item` (`data_pedido`, `usuario_CPF`, `pedido_ID`)
VALUES 
  ('2025-02-14', '49664926701', 4),
  ('2025-02-14', '49664926701', 5);

-- Carlos Souza: Cancela a compra
INSERT INTO `loja_livros`.`Pedidos` (`usuario_CPF`, `qnt_vendida`, `ISBN`, `data_vendido`)
VALUES ('06675799665', 7, '9786584824089', '2025-02-14');

INSERT INTO `loja_livros`.`Pedidos_Item` (`data_pedido`, `usuario_CPF`, `pedido_ID`)
VALUES ('2025-02-14', '06675799665', 6);

UPDATE `loja_livros`.`Pedidos_Item`
SET status = 'Cancelado' WHERE pedido_ID = 6;

-- Ana Pereira: Compra pendente
INSERT INTO `loja_livros`.`Pedidos` (`usuario_CPF`, `qnt_vendida`, `ISBN`, `data_vendido`)
VALUES ('00919020968', 1, '9783570165263', '2025-02-14');

INSERT INTO `loja_livros`.`Pedidos_Item` (`data_pedido`, `usuario_CPF`, `pedido_ID`)
VALUES ('2025-02-14', '00919020968', 7);

-- Lucas Santos: Compra 2 livros
INSERT INTO `loja_livros`.`Pedidos` (`usuario_CPF`, `qnt_vendida`, `ISBN`, `data_vendido`)
VALUES 
  ('74374501002', 6, '9788551007343', '2025-02-14'),
  ('74374501002', 4, '9788551007350', '2025-02-14');

INSERT INTO `loja_livros`.`Pedidos_Item` (`data_pedido`, `usuario_CPF`, `pedido_ID`)
VALUES 
  ('2025-02-14', '74374501002', 8),
  ('2025-02-14', '74374501002', 9);

UPDATE `loja_livros`.`Pedidos_Item`
SET status = 'Concluído' WHERE pedido_ID IN (8, 9);

-- Juliana Santos: Compra pendente
INSERT INTO `loja_livros`.`Pedidos` (`usuario_CPF`, `qnt_vendida`, `ISBN`, `data_vendido`)
VALUES ('98104275577', 4, '9786555320213', '2025-02-14');

INSERT INTO `loja_livros`.`Pedidos_Item` (`data_pedido`, `usuario_CPF`, `pedido_ID`)
VALUES ('2025-02-14', '98104275577', 10);

-- Gabriela Costa: Compra 2 livros
INSERT INTO `loja_livros`.`Pedidos` (`usuario_CPF`, `qnt_vendida`, `ISBN`, `data_vendido`)
VALUES 
  ('78901234567', 10, '9786555114744', '2025-02-14'),
  ('78901234567', 6, '9780008627800', '2025-02-14');

INSERT INTO `loja_livros`.`Pedidos_Item` (`data_pedido`, `usuario_CPF`, `pedido_ID`)
VALUES 
  ('2025-02-14', '78901234567', 11),
  ('2025-02-14', '78901234567', 12);

UPDATE `loja_livros`.`Pedidos_Item`
SET status = 'Concluído' WHERE pedido_ID IN (11, 12);

-- Ricardo Alves: Cancela compra
INSERT INTO `loja_livros`.`Pedidos` (`usuario_CPF`, `qnt_vendida`, `ISBN`, `data_vendido`)
VALUES ('89012345678', 3, '9786560050167', '2025-02-14');

INSERT INTO `loja_livros`.`Pedidos_Item` (`data_pedido`, `usuario_CPF`, `pedido_ID`)
VALUES ('2025-02-14', '89012345678', 13);

UPDATE `loja_livros`.`Pedidos_Item`
SET status = 'Cancelado' WHERE pedido_ID = 13;

-- Fernanda Rocha: Compra pendente
INSERT INTO `loja_livros`.`Pedidos` (`usuario_CPF`, `qnt_vendida`, `ISBN`, `data_vendido`)
VALUES ('90123456789', 2, '9780000187574', '2025-02-14');

INSERT INTO `loja_livros`.`Pedidos_Item` (`data_pedido`, `usuario_CPF`, `pedido_ID`)
VALUES ('2025-02-14', '90123456789', 14);
