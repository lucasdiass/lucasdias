#language: pt
#utf-8

Dado(/^que eu acesse a página Fale conosco$/) do
	#Acessando o site Livelo
  visit ('http://www.pontoslivelo.com.br/')
end

Quando(/^clico no botão enviar$/) do
#Acessando página de fale conosco 

find('.dropdown-toggle.menutext.js-hover-menu', :exact_text => 'Livelo').hover
find('.Azul-', :text => 'Fale conosco').click

	within_frame('neoFrame') do
    find('.controlEM').click
  end
end

Quando(/^preencho todos os campos "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)" e "([^"]*)"$/) do |nome, email, cpf, assunto, mensagem|
   #Preenchendo campos obrigatórios 

   within_frame('neoFrame') do 
   	fill_in('Name', :with => nome) 
   	fill_in('EMail', :with => email)
   	find('.inputBlock.formInput', :text => 'CPF:').click
   	fill_in('FieldU', :with => cpf)
   	select(assunto, from: "categ")
   	fill_in('question', :with => mensagem)

   find('.searchButton').click 
end
end 

Então(/^consigo validar os campos obrigatórios$/) do
  #Vefificando mensagem de  erro 
  within_frame('neoFrame') do 

   assert_text('Por favor, verifique se existe algum erro nos campos abaixo e tente novamente!')  == true
 print "Esse aqui não foi amiguinho, não esqueça os campos :)\r\n"

end
end 