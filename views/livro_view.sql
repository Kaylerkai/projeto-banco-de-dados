-- -----------------------------------------------------
-- Relatório de livro
-- 
-- -----------------------------------------------------

CREATE VIEW view_livro_relatorio AS
SELECT 
  l.titulo,
  l.preco,
  l.qnt as estoque,
  GROUP_CONCAT(c.nome SEPARATOR ', ') AS categorias,
  a.nome AS autor,
  e.nome AS editora
FROM `loja_livros`.`Livro` l
JOIN `loja_livros`.`Autor` a ON l.autor_ID = a.id_autor
JOIN `loja_livros`.`Editora` e ON l.editora_CNPJ = e.CNPJ
JOIN `loja_livros`.`Livro_tem_Categorias` ltc ON l.ISBN = ltc.ISBN
JOIN `loja_livros`.`Categorias` c ON ltc.categoria_cod = c.cod_categoria
GROUP BY l.titulo, l.preco, l.qnt, a.nome, e.nome;