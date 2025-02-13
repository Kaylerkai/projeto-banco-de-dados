-- -----------------------------------------------------
-- Gatilho:
-- 
-- -----------------------------------------------------
DELIMITER $$
CREATE TRIGGER total_pedido BEFORE INSERT ON `loja_livros`.`Pedidos`
FOR EACH ROW
BEGIN
  DECLARE qnt_max INT;
  
  SELECT qnt INTO qnt_max FROM Livro WHERE ISBN = NEW.ISBN;
  
  IF NEW.qnt_vendida > qnt_max THEN
    SIGNAL SQLSTATE '45000' 
    SET MESSAGE_TEXT = 'A quantidade vendida não pode ser maior do que a quantidade em estoque!';
  END IF;  

  SET NEW.total_pedido = (SELECT SUM(NEW.qnt_vendida * preco) FROM Livro  WHERE ISBN = NEW.ISBN);   
END $$
DELIMITER ;

-- -----------------------------------------------------
-- Gatilho:
--
-- -----------------------------------------------------
DELIMITER $$
CREATE TRIGGER total_pedido_update BEFORE UPDATE ON `loja_livros`.`Pedidos`
FOR EACH ROW
BEGIN
  DECLARE qnt_max     INT;
  DECLARE valor_total DECIMAL(10, 2);
  
  -- Pegar a quantidade de livros que tem
  SELECT qnt INTO qnt_max FROM Livro WHERE ISBN = NEW.ISBN;

  -- Calcular o valor do pedido
  SELECT SUM(NEW.qnt_vendida * preco) INTO valor_total  FROM Livro  WHERE ISBN = NEW.ISBN;
  
  IF NEW.qnt_vendida > qnt_max THEN
    SIGNAL SQLSTATE '45000' 
    SET MESSAGE_TEXT = 'A quantidade vendida não pode ser maior do que a quantidade em estoque!';
  END IF;  

  SET NEW.total_pedido = valor_total;   
END $$
DELIMITER ;