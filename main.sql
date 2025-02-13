-- -----------------------------------------------------
-- Loja_livros
-- -----------------------------------------------------
-- Sistema para criar uma loja de livros
--  
-- Suporte:
-- MySQL 5.7.17 & 8.0.39
-- 
-- Igor brenno Kayo Ronald 
-- -----------------------------------------------------

DROP DATABASE IF EXISTS `loja_livros`;

CREATE DATABASE IF NOT EXISTS `loja_livros` DEFAULT CHARACTER SET utf8 ;

USE `loja_livros`;

-- -----------------------------------------------------
-- Tabela Usuarios
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_livros`.`Usuarios` (
  `id_usuario` INT           NOT NULL AUTO_INCREMENT,
  `CPF`        CHAR(11)      NOT NULL,
  `nome`       VARCHAR(255)  NOT NULL,
  `email`      VARCHAR(255)  NOT NULL,
  `senha`      VARBINARY(64) NOT NULL,
  `endereco`   VARCHAR(45)   NOT NULL,
  `criado_em`  TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP,

  --Integridade
  PRIMARY KEY (`CPF`),
  UNIQUE (`id_usuario`, `email`),
  CONSTRAINT vld_cpf CHECK (cpf REGEXP '^[0-9]+$')
);


-- -----------------------------------------------------
-- Table Editora
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_livros`.`Editora` (
  `id_editora` INT          NOT NULL AUTO_INCREMENT,
  `CNPJ`       CHAR(14)     NOT NULL,
  `nome`       VARCHAR(255) NOT NULL,
  `site`       VARCHAR(100)     NULL,
  `email`      VARCHAR(255) NOT NULL,
  `telefone`   CHAR(15)     NOT NULL,

  `criado_em`  DATETIME     NULL DEFAULT CURRENT_TIMESTAMP,

  -- Integridade
  PRIMARY KEY (`id_editora`, `CNPJ`),
  UNIQUE  (`CNPJ`, `email`),

  CONSTRAINT vld_cnpj CHECK (cnpj REGEXP '^[0-9]+$')
);


-- -----------------------------------------------------
-- Tabela Autor
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_livros`.`Autor` (
  `id_autor`  INT          NOT NULL AUTO_INCREMENT,
  `nome`      VARCHAR(255) NOT NULL,
  `biografia` TEXT             NULL,

  -- Integridade
  PRIMARY KEY (`id_autor`)
);

-- -----------------------------------------------------
-- Tabela Categorias
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_livros`.`Categorias` (
  `cod_categoria`  INT         NOT NULL,
  `nome`           VARCHAR(45) NOT NULL,

  -- Integridade
  PRIMARY KEY (`cod_categoria`)
);


-- -----------------------------------------------------
-- Tabela Livro
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_livros`.`Livro` (
-- `id_livro`        INT                          NOT NULL AUTO_INCREMENT,
  `id_livro`        BINARY(16)                   DEFAULT (UUID_TO_BIN(UUID())),
  `ISBN`            CHAR(13)                     NOT NULL,
  `titulo`          VARCHAR(255)                 NOT NULL,
  `slug`            VARCHAR(255)                 NOT NULL,
  `descricao`       TEXT                             NULL,
  `preco`           DECIMAL(10,2)                NOT NULL,
  `qnt`             INT                          NOT NULL  DEFAULT 100,
  `tipo_de_media`   ENUM('HQ', 'Mangá', 'Livro') NOT NULL  DEFAULT 'Livro',
  `data_publicacao` DATE                         NOT NULL,

  -- FK
  `editora_CNPJ`    CHAR(14)                     NOT NULL,
  `autor_ID`        INT                          NOT NULL,

  `criado_em`       DATETIME                         NULL  DEFAULT CURRENT_TIMESTAMP,
  -- Integridade
  PRIMARY KEY (`ISBN`),
  UNIQUE(`id_livro`, `slug`),

  -- Autor
  FOREIGN KEY (`autor_ID`)
    REFERENCES `loja_livros`.`Autor` (`id_autor`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

  -- Editora
  FOREIGN KEY (`editora_CNPJ`)
    REFERENCES `loja_livros`.`Editora` (`CNPJ`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- -----------------------------------------------------
-- Tabela Reviews
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_livros`.`Reviews` (
  `id_review`      INT      NOT NULL AUTO_INCREMENT,
  `nota`           INT(5)   NOT NULL,
  `comentario`     TEXT         NULL DEFAULT NULL,
  `usuario_CPF`    CHAR(11),
  `ISBN`           CHAR(13),
  `criado_em`      DATETIME     NULL DEFAULT CURRENT_TIMESTAMP,

  PRIMARY KEY (`id_review`),
  UNIQUE(`usuario_CPF`, `ISBN`),

  CONSTRAINT CHECK (nota >= 1 AND nota <= 5),

  FOREIGN KEY (`usuario_CPF`)
    REFERENCES `loja_livros`.`Usuarios` (`CPF`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

  FOREIGN KEY (`ISBN`)
    REFERENCES `loja_livros`.`Livro` (`ISBN`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- -----------------------------------------------------
-- Tabela Livro_tem_Categorias
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_livros`.`Livro_tem_Categorias` (
  `ISBN`          CHAR(13),
  `categoria_cod` INT,

  -- referência a tabela livros
  FOREIGN KEY (`ISBN`)
    REFERENCES `loja_livros`.`Livro` (`ISBN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,

  -- referência a tabela Categoria
  FOREIGN KEY (`categoria_cod`)
    REFERENCES `loja_livros`.`Categorias` (`cod_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

-- -----------------------------------------------------
-- Tabela Pedidos
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_livros`.`Pedidos` (
  `id_pedido`     INT           NOT NULL AUTO_INCREMENT,
  `total_pedido`  DECIMAL(10,2) NULL  DEFAULT 0.0,
  `usuario_CPF`   CHAR(11)      NOT NULL,
  `qnt_vendida`   INT           DEFAULT 0,
  `data_vendido`  DATE,
  `ISBN`          CHAR(13)      NOT NULL,

  PRIMARY KEY (`id_pedido`),
  CONSTRAINT CHECK (`qnt_vendida` >= 0),

  -- referência a tabela usuário
  FOREIGN KEY (`usuario_CPF`) REFERENCES `loja_livros`.`Usuarios` (`CPF`),
  
  -- referência a tabela livros
  FOREIGN KEY (`ISBN`) REFERENCES `loja_livros`.`Livro` (`ISBN`)
);


-- -----------------------------------------------------
-- Tabela Pedidos_Item	                              --
-- 
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `loja_livros`.`Pedidos_Item` (
  `id_pedido_item`  INT           NOT NULL AUTO_INCREMENT,
  `status`          ENUM('Pendente', 'Concluído', 'Cancelado') NOT NULL DEFAULT 'Pendente',
  `data_pedido`     DATE,  
  
  -- FK
  `usuario_CPF`    CHAR(11)      NOT NULL,
  `pedido_ID`      INT           NOT NULL,
  
  PRIMARY KEY (`id_pedido_item`),

  -- referência a tabela usuário
  FOREIGN KEY (`usuario_CPF`) REFERENCES `loja_livros`.`Usuarios` (`CPF`),
  
  -- referência a tabela pedido
  FOREIGN KEY (`pedido_ID`) REFERENCES `loja_livros`.`Pedidos` (`id_pedido`)
);

