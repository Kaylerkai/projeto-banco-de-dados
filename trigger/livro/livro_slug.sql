-- -----------------------------------------------------
-- Gatilho: Antes do insert
-- Gerar automaticamente o campo 'slug' com base no título do livro fornecido.
-- -----------------------------------------------------
DELIMITER $$
CREATE TRIGGER gerar_slug_insert BEFORE INSERT ON `loja_livros`.`Livro`
FOR EACH ROW
BEGIN
    SET NEW.slug = SLUG_FORMAT(NEW.titulo);
END $$
END;
DELIMITER ;

-- -----------------------------------------------------
-- Gatilho: Antes do update
-- Gerar automaticamente o campo 'slug' com base no título do livro fornecido.
-- -----------------------------------------------------
DELIMITER $$
CREATE TRIGGER gerar_slug_update BEFORE UPDATE ON `loja_livros`.`Livro`
FOR EACH ROW
BEGIN
   SET NEW.slug = SLUG_FORMAT(NEW.titulo);
END $$
-- END;
DELIMITER ;