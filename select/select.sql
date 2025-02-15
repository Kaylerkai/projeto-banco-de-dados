-- 1. Consulta para Listar Todos os Livros Disponíveis
SELECT 
    l.titulo,
    l.preco,
    l.qnt,
    a.nome AS autor,
    e.nome AS editora
FROM `loja_livros`.`Livro` l
JOIN `loja_livros`.`Autor` a ON l.autor_ID = a.id_autor
JOIN `loja_livros`.`Editora` e ON l.editora_CNPJ = e.CNPJ;

-- OUExemplo com view

SELECT * FROM view_livro_relatorio;

-- 2. Consulta para Verificar as Resenhas de um Livro
SELECT 
    r.nota,
    r.comentario,
    u.nome AS usuario
FROM `loja_livros`.`Reviews` r
JOIN `loja_livros`.`Usuarios` u ON r.usuario_CPF = u.CPF
WHERE r.ISBN = '9788532517708'; 


-- 3. Livros publicados em 2024
SELECT l.titulo FROM Livro l WHERE YEAR(l.data_publicacao) = 2024;

-- 4 produtos mais vendidos
SELECT ISBN, l.titulo,
    (SELECT SUM(p.qnt_vendida) FROM Pedidos p WHERE p.ISBN = l.ISBN) AS total_vendido
FROM Livro l
ORDER BY total_vendido DESC
LIMIT 5;

-- Livros cujo título começa com 'O'
SELECT l.titulo, l.ISBN, l.preco FROM Livro l WHERE l.titulo LIKE 'O%';

-- 6. Quantidade de pedidos pendentes de um usuário
SELECT u.nome, 
       (SELECT COUNT(*) 
        FROM Pedidos_Item pi 
        WHERE pi.usuario_CPF = u.CPF AND pi.status = 'Pendente') AS pedidos_pendentes
FROM Usuarios u
WHERE u.CPF = '07630178840';

-- 7. Produtos com mais de 90 unidades em estoque
SELECT l.titulo FROM Livro l WHERE l.qnt > 90 LIMIT 10;


-- 8. Usuários que realizaram mais de 5 pedidos
SELECT u.nome, (SELECT COUNT(*) FROM Pedidos p WHERE p.usuario_CPF = u.CPF) AS total_pedidos
FROM Usuarios u
HAVING total_pedidos >= 5;


-- 9. Editoras com mais de 3 livros publicados
SELECT ed.nome, 
	(SELECT COUNT(*) FROM Livro l WHERE l.editora_CNPJ = e.CNPJ) AS livros_publicados
FROM Editora ed
HAVING livros_publicados > 3;


-- 10. Autores com mais de 5 livros publicados
SELECT a.nome, 
  (SELECT COUNT(*) FROM Livro l WHERE l.autor_ID = a.id_autor) AS livros_publicados
FROM Autor a
HAVING livros_publicados > 5;

