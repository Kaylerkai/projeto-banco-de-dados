-- Inserir dados na tabela Pedidos
INSERT INTO `loja_livros`.`Pedidos` (`usuario_CPF`,`qnt_vendida`,`ISBN`,`data_vendido`)
VALUES ('07630178840', 20, '9788532517708', '2025-02-13');



INSERT INTO `loja_livros`.`Pedidos_Item` (`data_pedido`, `usuario_CPF`, `pedido_ID`)
VALUES ('2024-02-14', '07630178840', 1);



-- Fechar a compra
UPDATE `loja_livros`.`Pedidos_Item`
SET status = 'Concluído' WHERE id_pedido_item = 1;

select * from Pedidos_Item;