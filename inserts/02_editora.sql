-- -----------------------------------------------------
-- Populando banco de dados de Editora
-- INSERT
-- -----------------------------------------------------

INSERT INTO
	`loja_livros`.`Editora` (`CNPJ`, `nome`, `site`, `email`, `telefone`)
VALUES
	(
		'33495771000156', -- CNPJ -> 1
		'Editora Record Ltda', -- Nome
		'https://www.record.com.br/', -- Site
		'sac@record.com.br', -- Email
		'2125852002' -- Telefone
	),
	(
		'06985027000167', -- CNPJ -> 2
		'Editora Arqueiro', -- Nome
		'https://www.editoraarqueiro.com.br/', -- Site
		'atendimento@editoraarqueiro.com.br', -- Email
		'1138684492' -- Telefone
	),
	(
		'32193802000151', -- CNPJ -> 3
		'Antofagica Editora', -- Nome
		'https://www.antofagica.com.br/', -- Site
		'prefeitura@antofagica.com.br', -- Email
		'22631020' -- Telefone
	),
	(
		'42444703000159', -- CNPJ -> 4
		'Editora Rocco', -- Nome
		'https://www.rocco.com.br/', -- Site
		'sac@rocco.com.br', -- Email
		'2135252000' -- Telefone
	),
	(
		'29756697000298', -- CNPJ -> 5
		'Faro Editorial', -- Nome
		'https://faroeditorial.com.br/', -- Site
		'contato@faroeditorial.com.br', -- Email
		'064602060' -- Telefone
	),
	(
		'03796758000257', -- CNPJ -> 6
		'Editora Melhoramentos', -- Nome
		'https://www.melhoramentos.com.br/editora/', -- Site
		'sac@melhoramentos.com.br', -- Email
		'1138740774' -- Telefone
	),
	(
		'22520538000160', -- CNPJ -> 7
		'Editora Harper Collin', -- Nome
		'https://harpercollins.com.br/', -- Site
		'faleconosco@harpercollins.com.br', -- Email
		'3158329312' -- Telefone
	);