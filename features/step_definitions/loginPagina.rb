# encoding: utf-8

# Cenario 1
Dado(/^que eu tenha o link de acesso da pagina$/) do
	@navegador = Selenium::WebDriver.for :firefox
	@navegador.manage.window.maximize
	@navegador.manage.timeouts.implicit_wait = 5
	@navegador.get 'https://the-internet.herokuapp.com/login'
end

Quando(/^informar "([^"]*)" no campo username$/) do |user|
	@navegador.find_element(:id, 'username').send_keys(user)	
end

Quando(/^informa a "([^"]*)" no campo password$/) do |password|
	@navegador.find_element(:id, 'password').send_keys(password)  
end

Quando(/^clicar no botao "([^"]*)"$/) do |arg1|
	@navegador.find_element(:css, 'button[type="submit"]').click
end

Quando(/^sera apresentado a mensagem "([^"]*)"$/) do |menLogin|                  
	mensagemLogin = @navegador.find_element(:id, 'flash').text
	expect(mensagemLogin)==(menLogin)
end

Entao(/^quando eu clicar no botao Logout devera ser apresentado a mensagem "([^"]*)"$/) do |menLogout|
	@navegador.find_element(:css, 'html.no-js body div.row div#content.large-12.columns div.example a.button.secondary.radius i.icon-2x.icon-signout').click
	mensagemLogout = @navegador.find_element(:id, 'flash').text
	expect(mensagemLogout)==(menLogout)
	@navegador.quit
end      

# Cenario 2

Dado(/^que eu tenha o link de acesso$/) do
	@navegador = Selenium::WebDriver.for :firefox
	@navegador.manage.window.maximize
	@navegador.manage.timeouts.implicit_wait = 5
	@navegador.get 'https://the-internet.herokuapp.com/login'
end

Quando(/^eu tentar efetuar o login sem preencher os campos username e password$/) do
	@navegador.find_element(:css, 'button[type="submit"]').click
end

Entao(/^o sistema devera apresentar a mensagem "([^"]*)"$/) do |menA|
	mensagemAlertaA = @navegador.find_element(:id, 'flash').text
	expect(mensagemAlertaA)==(menA)
	@navegador.quit
end                                                                   

# Cenario 3

Dado(/^o link de acesso$/) do                                                                
  @navegador = Selenium::WebDriver.for :firefox
	@navegador.manage.window.maximize
	@navegador.manage.timeouts.implicit_wait = 5
	@navegador.get 'https://the-internet.herokuapp.com/login'                
end                                                                                          
                                                                                             
Quando(/^eu tentar efetuar o login, apos preencher apenas o campo username "([^"]*)"$/) do |user2|
	@navegador.find_element(:id, 'username').send_keys(user2)
	@navegador.find_element(:css, 'button[type="submit"]').click
end         
                                                 
Entao(/^o sistema devera mostrar a mensagem "([^"]*)"$/) do |menB|
	mensagemAlertaB = @navegador.find_element(:id, 'flash').text
	expect(mensagemAlertaB)==(menB)
	@navegador.quit
end                                

# Cenario 4

Dado(/^link de acesso$/) do                                                                
  @navegador = Selenium::WebDriver.for :firefox
	@navegador.manage.window.maximize
	@navegador.manage.timeouts.implicit_wait = 5
	@navegador.get 'https://the-internet.herokuapp.com/login'                
end                                                                                          
                                                                                             
Quando(/^eu tentar efetuar o login, apos preencher apenas o campo password "([^"]*)"$/) do |pass2|
	@navegador.find_element(:id, 'password').send_keys(pass2)
	@navegador.find_element(:css, 'button[type="submit"]').click
end         
                                                 
Entao(/^o sistema devera mostrar a mensagem "([^"]*)"$/) do |menB|
	mensagemAlertaB = @navegador.find_element(:id, 'flash').text
	expect(mensagemAlertaB)==(menB)
	@navegador.quit
end     

