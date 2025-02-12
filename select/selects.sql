-- Consulta para Listar Todos os Livros Disponíveis
SELECT 
    l.titulo,
    l.preco,
    l.qnt,
    a.nome AS autor,
    e.nome AS editora
FROM `loja_livros`.`Livro` l
JOIN `loja_livros`.`Autor` a ON l.autor_ID = a.id_autor
JOIN `loja_livros`.`Editora` e ON l.editora_CNPJ = e.CNPJ;

-- Consulta para Verificar o Carrinho de Compras de um Usuário
SELECT 
    c.pedido_ID,
    c.ISBN,
    l.titulo,
    c.quantidade,
    l.preco,
    (c.quantidade * l.preco) AS total_item
FROM `loja_livros`.`Carrinho` c
JOIN `loja_livros`.`Livro` l ON c.ISBN = l.ISBN
WHERE c.pedido_ID = (SELECT MAX(id_pedido) FROM `loja_livros`.`Pedidos` WHERE usuario_CPF = '07630178840');
    
-- Consulta para Verificar o Total do Pedido de um Usuário
SELECT 
    SUM(c.quantidade * l.preco) AS total_pedido
FROM `loja_livros`.`Carrinho` c
JOIN `loja_livros`.`Livro` l ON c.ISBN = l.ISBN
WHERE c.pedido_ID = (SELECT MAX(id_pedido) FROM `loja_livros`.`Pedidos` WHERE usuario_CPF = '07630178840');

-- Consulta para Verificar os Pedidos de um Usuário
SELECT 
    p.id_pedido,
    p.status_pedido,
    (SELECT SUM(c.quantidade * l.preco) 
     FROM `loja_livros`.`Carrinho` c
     JOIN `loja_livros`.`Livro` l ON c.ISBN = l.ISBN
     WHERE c.pedido_ID = p.id_pedido) AS total_pedido
FROM `loja_livros`.`Pedidos` p
WHERE p.usuario_CPF = '07630178840';

-- Consulta para Verificar as Resenhas de um Livro
SELECT 
    r.nota,
    r.comentario,
    u.nome AS usuario
FROM `loja_livros`.`Reviews` r
JOIN `loja_livros`.`Usuarios` u ON r.usuario_CPF = u.CPF
WHERE r.ISBN = '9788532517708'; 

-- Consulta para Listar Todos os Livros de uma Categoria
SELECT 
    l.titulo,
    l.preco,
    c.nome AS categoria
FROM `loja_livros`.`Livro` l
JOIN `loja_livros`.`Livro_tem_Categorias` ltc ON l.ISBN = ltc.ISBN
JOIN `loja_livros`.`Categorias` c ON ltc.categoria_cod = c.cod_categoria
WHERE c.nome = 'Ficção';

-- Consulta para Verificar os Livros por Autor
SELECT 
    l.titulo,
    l.preco,
    a.nome AS autor
FROM `loja_livros`.`Livro` l
JOIN `loja_livros`.`Autor` a ON l.autor_ID = a.id_autor
WHERE a.nome = 'J.K. Rowling';

-- Consulta para Verificar o Status de um Pedido
SELECT 
    id_pedido,
    status_pedido
FROM `loja_livros`.`Pedidos`
WHERE usuario_CPF = '07630178840'
ORDER BY id_pedido DESC LIMIT 1;

