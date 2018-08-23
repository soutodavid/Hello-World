# require 'watir'
#
# browser = Watir::Browser.new :ie
# browser.goto 'google.com'
# browser.text_field(id: 'lst-ib').set 'spread tecnologia'
# browser.button(value: 'Pesquisa Google').click
# texto = browser.div(id: 'resultStats').text
# if texto.include?("9.560.000")
#   puts "Encontrei!"
# else
#   puts "Não encontrei!"
# end
# browser.close