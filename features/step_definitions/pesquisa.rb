# encode: UTF-8
require './features/pages/page'

pesquisa = PesquisaGoogle.new

Dado (/^que abra meu navegador "([^"]*)"$/) do |navegador|
  pesquisa.criaNavegador(navegador)
end
Dado("digitar a url {string}") do |url|
  pesquisa.vaiPara(url)
end
Dado("digitar o texto {string}") do |texto_pesquisa|
  pesquisa.preencheCampo(texto_pesquisa)
end
Quando("clicar no botão {string}") do |texto_botao|
  pesquisa.clicaBotao(texto_botao)
end
Entao(/^sera retornado aproximadamente$/) do |table|
  pesquisa.verificaValor(table)
end
Entao("navegador será fechado") do
  pesquisa.fechaNavegador
end