-- -----------------------------------------------------
-- View Simples com dados formatados do Usuário
-- 
-- -----------------------------------------------------
CREATE VIEW view_usuario_formatado AS
SELECT
	`id_usuario`,
    `nome`,
    STR_FORMAT(`CPF`) AS `CPF`,
    `senha`,
    DATE_FORMAT(`criado_em`, '%d/%m/%Y') AS `Criado Em`
from `loja_livros`.`Usuarios`;