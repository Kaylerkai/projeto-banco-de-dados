-- -----------------------------------------------------
-- Gatilho:
-- Não permitir que o estoque seja menor que 0
-- -----------------------------------------------------
DELIMITER $$
CREATE TRIGGER antes_insert_estoque BEFORE INSERT ON `loja_livros`.`Livro`
FOR EACH ROW
BEGIN
    IF NEW.qnt < 0 THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Quantidade em estoque não pode ser negativa!';
    END IF;
-- END;
	END $$
DELIMITER ;

-- -----------------------------------------------------
-- Gatilho:
-- Não permitir que o estoque seja menor que 0
-- -----------------------------------------------------
DELIMITER $$
CREATE TRIGGER antes_update_estoque BEFORE UPDATE ON `loja_livros`.`Livro`
FOR EACH ROW
BEGIN
    IF NEW.qnt < 0 THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Quantidade em estoque não pode ser negativa!';
    END IF;
END $$
-- END;
DELIMITER ;
