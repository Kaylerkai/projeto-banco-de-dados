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

-- 2. Consulta para Verificar as Resenhas de um Livro
SELECT 
    r.nota,
    r.comentario,
    u.nome AS usuario
FROM `loja_livros`.`Reviews` r
JOIN `loja_livros`.`Usuarios` u ON r.usuario_CPF = u.CPF
WHERE r.ISBN = '9788532517708'; 


-- 2. Consulta para Listar Todos os Livros de uma Categoria
SELECT 
    titulo,
    preco,
    (SELECT nome FROM `loja_livros`.`Categorias` 
     WHERE cod_categoria = 
        (SELECT categoria_cod FROM `loja_livros`.`Livro_tem_Categorias` 
         WHERE ISBN = l.ISBN LIMIT 1)
    ) AS categoria
FROM `loja_livros`.`Livro` l
WHERE l.ISBN IN (
    SELECT ISBN FROM `loja_livros`.`Livro_tem_Categorias` 
    WHERE categoria_cod = (SELECT cod_categoria FROM `loja_livros`.`Categorias` WHERE nome = 'Ficção')
);
