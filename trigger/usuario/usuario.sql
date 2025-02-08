-- -----------------------------------------------------
-- Gatilho: Inserção de um usuário
-- Criando a trigger para hashear a senha antes da inserção
-- -----------------------------------------------------
DELIMITER $$
CREATE TRIGGER antes_insert_usuario BEFORE INSERT ON `loja_livros`.`Usuarios`
FOR EACH ROW
BEGIN
    SET NEW.senha = SHA2(NEW.senha, 256);
END $$
-- END;
DELIMITER ;

-- -----------------------------------------------------
-- Gatilho: Inserção de um usuário
-- Criando a trigger para hashear a senha antes da inserção
-- -----------------------------------------------------

DELIMITER $$
CREATE TRIGGER antes_update_usuario BEFORE UPDATE ON `loja_livros`.`Usuarios`
FOR EACH ROW
BEGIN
    SET NEW.senha = SHA2(NEW.senha, 256);
END $$
-- END;
DELIMITER ;