-- -----------------------------------------------------
-- Populando banco de dados de Livro
-- Produtos
-- INSERT
-- -----------------------------------------------------
-- Holly Black
INSERT INTO
  `loja_livros`.`Livro` (
    `ISBN`,
    `titulo`,
    `preco`,
    `descricao`,
    `data_publicacao`,
    `autor_ID`,
    `editora_CNPJ`
  )
VALUES
  (
    '9788532517708',
    'As Crônicas de Spiderwick: O Guia de Campo',
    49.90,
    'Um guia ilustrado que contém informações sobre as criaturas e o mundo fantástico da série Spiderwick.',
    '2003-05-01',
    1,
    '42444703000159'
  ), -- 1
  (
    '9788323799825',
    'As Crônicas de Spiderwick: A Pedra da Visão',
    49.90,
    'A continuação das aventuras dos irmãos Grace, que enfrentam novos desafios no mundo das criaturas mágicas.',
    '2004-01-01',
    1,
    '42444703000159'
  ),
  (
    '9788532518798',
    'As Crônicas de Spiderwick: O Segredo de Lucinda',
    49.90,
    'Mais um volume da saga dos irmãos Grace, focado em mistérios envolvendo a personagem Lucinda e a ameaça das criaturas mágicas.',
    '2005-01-01',
    1,
    '42444703000159'
  ),
  (
    '9780689859397',
    'As Crônicas de Spiderwick: A Árvore de Ferro',
    49.90,
    'Os irmãos Grace enfrentam perigos ao tentar salvar a árvore mágica, que guarda o segredo de suas origens.',
    '2005-04-01',
    1,
    '42444703000159'
  ),
  (
    '9780689859403',
    'As Crônicas de Spiderwick: A Ira de Mulgarath',
    49.90,
    'O confronto final com o maligno Mulgarath, em uma batalha épica para salvar o mundo dos humanos e das criaturas mágicas.',
    '2006-02-05',
    1,
    '42444703000159'
  ),
  (
    '9786584824089',
    'As Crônicas de Spiderwick: Edição Completamente Fantástica',
    79.90,
    'Tudo começou quando a família Grace se mudou para a propriedade dos Spiderwick e Jared Grace encontrou um livro misterioso.',
    '2023-09-02',
    1,
    '42444703000159'
  ),
  (
    '9783570165263',
    'O Príncipe Cruel (Vol. 1 O Povo do Ar)',
    39.90,
    'A história de Jude, uma garota mortal vivendo no reino das fadas, onde traições e intrigas determinam o destino.',
    '2018-01-02',
    1,
    '42444703000159'
  );

-- John Ronald Reuel Tolkien
INSERT INTO
  `loja_livros`.`Livro` (
    `ISBN`,
    `titulo`,
    `preco`,
    `descricao`,
    `data_publicacao`,
    `autor_ID`,
    `editora_CNPJ`
  )
VALUES
  (
    '9788551007343',
    'O Senhor dos Anéis: A Sociedade do Anel',
    70.90,
    'O primeiro volume da trilogia épica "O Senhor dos Anéis", onde a jornada de Frodo Bolseiro e seus companheiros começa para destruir o Um Anel.',
    '1954-07-29',
    2,
    '22520538000160'
  ), -- 7
  (
    '9788551007350',
    'O Senhor dos Anéis: As Duas Torres',
    50.90,
    'O segundo volume da trilogia "O Senhor dos Anéis", onde a guerra contra o Senhor das Trevas se intensifica e os caminhos dos heróis se separam.',
    '1954-11-11',
    2,
    '22520538000160'
  ),
  (
    '9788551007367',
    'O Senhor dos Anéis: O Retorno do Rei',
    55.90,
    'O último volume da trilogia "O Senhor dos Anéis", onde a batalha final contra Sauron ocorre e Frodo e seus amigos enfrentam os últimos desafios.',
    '1955-10-20',
    2,
    '22520538000160'
  ),
  (
    '9788551007374',
    'O Hobbit',
    49.90,
    'O precursor de "O Senhor dos Anéis", que conta a jornada de Bilbo Bolseiro em sua aventura para recuperar o tesouro do dragão Smaug.',
    '1937-09-21',
    2,
    '22520538000160'
  ),
  (
    '9788551007381',
    'O Silmarillion',
    89.90,
    'A história da Terra-média desde a criação até o final da Primeira Era, fornecendo um pano de fundo crucial para os eventos de "O Senhor dos Anéis".',
    '1977-09-15',
    2,
    '22520538000160'
  );

-- Clarice Lispector: 5
INSERT INTO
  `loja_livros`.`Livro` (
    `ISBN`,
    `titulo`,
    `preco`,
    `descricao`,
    `data_publicacao`,
    `autor_ID`,
    `editora_CNPJ`
  )
VALUES
  (
    '9786555320213',
    'Água viva: Edição comemorativa',
    32.90,
    'A trama do livro é tênue, o que faz dele "um romance sem romance". Um eu , declinado no feminino, escreve a um tu , no masculino, expondo suas ânsias e procuras, num discurso de fluidez ininterrupta entre o delírio.',
    '2020-07-09',
    5,
    '42444703000159'
  ),
  (
    '9786555320350',
    'A hora da estrela: Edição comemorativa',
    24.90,
    'Pouco antes de morrer, em 1977, Clarice Lispector decide se afastar da inflexão intimista que caracteriza sua escrita para desafiar a realidade. O resultado desse salto na extroversão é A hora da estrela, o livro mais surpreendente que escreveu',
    '2020-07-03',
    5,
    '42444703000159'
  );

-- Machado de Assis -- 6
INSERT INTO
  `loja_livros`.`Livro` (
    `ISBN`,
    `titulo`,
    `preco`,
    `descricao`,
    `data_publicacao`,
    `autor_ID`,
    `editora_CNPJ`
  )
VALUES
  (
    '9788594318619',
    'Memórias póstumas de Brás Cubas',
    50.00,
    'Não tive filhos, não transmiti a nenhuma criatura o legado da nossa miséria. Com essas palavras, o narrador de Memórias Póstumas de Brás Cubas resume a sua vida. ',
    '2019-07-16',
    6,
    '42444703000159'
  );

-- C.S. Lewis
INSERT INTO
  `loja_livros`.`Livro` (
    `ISBN`,
    `titulo`,
    `preco`,
    `descricao`,
    `data_publicacao`,
    `autor_ID`,
    `editora_CNPJ`
  )
VALUES
  (
    '9786555114744',
    'As Crônicas de Nárnia: O Leão, a Feiticeira e o Guarda-Roupa',
    50.00,
    'Conta a história dos irmãos Pedro, Susana, Edmundo e Lúcia Pevensie. Eles descobrem um misterioso guarda-roupa que os leva a Nárnia, um reino mágico que sofre de um inverno sem fim desde que a temida Feiticeira Branca, tomou o poder.',
    '2023-02-16',
    3,
    '22520538000160'
  ),
  (
    '9780008627800',
    'As Crônicas de Nárnia: Príncipe Caspian',
    43.50,
    'Conta a história de um período em que Nárnia era dominada pelo Rei Miraz; toda a magia e encanto de Nárnia foram abafadas por seu reinado.',
    '2023-02-16',
    3,
    '22520538000160'
  ),
  (
    '9780001113489',
    'As Crônicas de Nárnia: A Viagem do Peregrino da Alvorada',
    60.21,
    'Edmundo e Lúcia ― e seu rabugento primo Eustáquio ― juntam-se ao Rei Caspian X, a fim de encontrar sete lordes que foram exilados após o malvado Miraz usurpar o trono de Nárnia.',
    '2023-02-16',
    3,
    '22520538000160'
  ),
  (
    '9780507653400',
    'As Crônicas de Nárnia: A Cadeira de Prata',
    64.30,
    'Anos se passaram em Nárnia. O Rei Caspian X já está bem velho, e o Príncipe Rilian, seu único filho e herdeiro, está desaparecido. Aslan convoca Eustáquio e Giu, uma amiga de escola, para desvendar esse mistério.',
    '2023-02-16',
    3,
    '22520538000160'
  ),
  (
    '9780507900182',
    'As Crônicas de Nárnia: O Cavalo e seu Menino',
    30.00,
    'Acompanhamos a história de Shasta nas terras ao sul de Nárnia. Após descobrir que seria vendido como escravo, ele foge, com seu cavalo falante Bri, rumo ao destino de seus sonhos — para o Norte e em direção a Nárnia!',
    '2023-02-16',
    3,
    '22520538000160'
  ),
  (
    '9786560050167',
    'As Crônicas de Nárnia: O Sobrinho do Mago',
    39.99,
    'O menino Gregório e sua vizinha Polly vão parar num bosque mágico que dá acesso a diversos mundos.',
    '2023-02-16',
    3,
    '22520538000160'
  ),
  (
    '9780508250132',
    'As Crônicas de Nárnia: A Última Batalha',
    30.00,
    ' um falso Aslan está à solta. Tirian X, o Rei de Nárnia, precisa agir rápido, antes que todos os animais sejam corrompidos. Para isso, conta com a ajuda de Eustáquio e Giu. A última batalha se aproxima!',
    '2023-02-16',
    3,
    '22520538000160'
  ),
  (
    '9780000187574',
    'Box: As Crônicas de Nárnia - Coleção completa',
    240.99,
    'Reunindo os sete livros da série de C.S, Lewis que mudou o mundo da ficção, o Kit Crônicas de Nárnia nos presenteia com todos os volumes dessa maravilhosa história. Agora em edição de luxo com as ilustrações.',
    '2023-02-16',
    3,
    '22520538000160'
  );

-- Antoine de Saint-Exupéry
INSERT INTO
  `loja_livros`.`Livro` (
    `ISBN`,
    `titulo`,
    `preco`,
    `descricao`,
    `data_publicacao`,
    `autor_ID`,
    `editora_CNPJ`
  )
VALUES
  (
    '9786584956247',
    'O Pequeno Príncipe - Edição de Luxo Almofadada',
    22.32,
    '"O Pequeno Príncipe", escrito pelo francês Antoine de Saint-Exupéry, é uma obra atemporal que encanta leitores de todas as idades desde sua publicação em 1943.',
    '2023-08-15',
    9,
    '29756697000298'
  ),
  (
    '9786559801367',
    'O Pequeno Príncipe – Edição almofadada e aquarelas originais',
    15.32,
    'Os personagens memoráveis do clássico de Antoine de Saint-Exupéry agora eternizados nos corações de gerações de leitores em uma edição de luxo.',
    '2024-08-15',
    9,
    '29756697000298'
  );

-- Ali Hazelwood
INSERT INTO
  `loja_livros`.`Livro` (
    `ISBN`,
    `titulo`,
    `preco`,
    `descricao`,
    `data_publicacao`,
    `autor_ID`,
    `editora_CNPJ`
  )
VALUES
  (
    '9786555656039',
    'Noiva',
    44.32,
    'Neste primeiro romance paranormal de Ali Hazelwood, uma aliança perigosa entre uma vampira e um lobisomem acaba se tornando um tórrido caso de amor.',
    '2024-04-07',
    13,
    '06985027000167'
  ),
  (
    '9786555653991',
    'A razão do amor (Sucesso do TikTok)',
    44.32,
    'No novo livro da autora best-seller de A hipótese de amor , uma cientista será obrigada a colaborar com seu rival em um projeto de proporções interestelares, e os resultados prometem ser explosivos.',
    '2022-04-07',
    13,
    '06985027000167'
  ),
  (
    '9786555653304',
    'A hipótese do amor',
    44.32,
    'Com personagens cativantes e diálogos afiados, este livro engraçado, sexy e inteligente se tornou uma das grandes sensações do TikTok.',
    '2024-06-05',
    13,
    '06985027000167'
  );

-- José Mauro de Vasconcelos
INSERT INTO
  `loja_livros`.`Livro` (
    `ISBN`,
    `titulo`,
    `preco`,
    `descricao`,
    `data_publicacao`,
    `autor_ID`,
    `editora_CNPJ`
  )
VALUES
  (
    '9788506084151',
    'Rosinha, Minha Canoa',
    32.32,
    'Com suplemento de leitura e notas explicativas de Luis Antonio Aguiar, professor, pesquisador e escritor. E uma breve biografia de José Mauro de Vasconcelos.',
    '2019-08-09',
    4,
    '03796758000257'
  ),
  (
    '9788506086896',
    'O Meu Pé de Laranja Lima',
    32.32,
    'Um clássico da literatura brasileira, com adaptações para a televisão, o cinema e o teatro, O Meu Pé de Laranja Lima é desses livros que marcam época',
    '2019-04-01',
    4,
    '03796758000257'
  );