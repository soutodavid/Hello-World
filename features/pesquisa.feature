# language: pt
Caracteristica: Pesquisa
  Cenario: Pesquisar Spread Tecnologia
    Dado que abra meu navegador "ie"
    E digitar a url "google.com"
    E digitar o texto "spread tecnologia"
    Quando clicar no botão "Pesquisa Google"
      Entao sera retornado aproximadamente
      |valor|
      |81.650.000|
      E navegador será fechado