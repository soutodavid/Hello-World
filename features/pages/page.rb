class PesquisaGoogle

  def criaNavegador(navegador)
    $browser = Watir::Browser.new navegador.to_sym
  end
  def vaiPara(url)
    $browser.goto url
  end
  def preencheCampo(texto)
    $browser.text_field(title: 'Pesquisar').set texto
  end
  def clicaBotao(texto_botao)
   $browser.button(value: texto_botao).click
  end
  def verificaValor(valor)
    data = valor.raw
    qlq = data[1][0]
    if !$browser.div(id: 'resultStats').text.include?(qlq)
      raise "Não encontrei"
    end
  end

  def fechaNavegador()
    $browser.close
  end
end
