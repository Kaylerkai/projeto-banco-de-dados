-- -----------------------------------------------------
-- Gatilho:
-- 
-- -----------------------------------------------------
DELIMITER $$
CREATE TRIGGER reduzir_estoque BEFORE INSERT ON `loja_livros`.`Pedidos_Item`
FOR EACH ROW
BEGIN
  IF NEW.status = 'Concluído' THEN
    UPDATE `loja_livros`.`Livro`
    SET qnt = qnt - (
      SELECT qnt_vendida
      FROM `loja_livros`.`Pedidos`
      WHERE id_pedido = NEW.pedido_ID
    )
    WHERE ISBN = (
      SELECT ISBN
      FROM `loja_livros`.`Pedidos`
      WHERE id_pedido = NEW.pedido_ID
    );
  END IF;
END $$
DELIMITER ;

-- -----------------------------------------------------
-- Gatilho:
--
-- -----------------------------------------------------
DELIMITER $$
CREATE TRIGGER reduzir_estoque_update BEFORE UPDATE ON `loja_livros`.`Pedidos_Item`
FOR EACH ROW
BEGIN
  IF NEW.status = 'Concluído' THEN
    UPDATE `loja_livros`.`Livro`
    SET qnt = qnt - (
      SELECT qnt_vendida
      FROM `loja_livros`.`Pedidos`
      WHERE id_pedido = NEW.pedido_ID
    )
    WHERE ISBN = (
      SELECT ISBN
      FROM `loja_livros`.`Pedidos`
      WHERE id_pedido = NEW.pedido_ID
    );
  END IF;
END $$
DELIMITER ;