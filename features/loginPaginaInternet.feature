# language: pt

Funcionalidade: validar login na pagina the internet
	Sendo o administrador da pagina the internet
	Posso cadastrar usuarios validos e invalidos
	Para validar a correta acao do sistema
	
	
	 Esquema do Cenário: Cenário: login e logout com uma conta válida enviado por linha de commando
    Dado que estou na página herokuapp
    Quando preencher os campos username e password com os valores enviados por linha comando
    E clicar no botão "Login"
    Então posso ver a mensagem "You logged into a secure area!"
    Quando clicar no botão "Logout"
    Então posso ver a mensagem "You logged out of the secure area!"
	
# Cenario 1

	Cenario: Validar a tentativa de login valido
	   Dado que eu tenha o link de acesso da pagina
     Quando informar "tomsmith" no campo username
		  E informa a "SuperSecretPassword!" no campo password
		  E clicar no botao "Login"
	      E sera apresentado a mensagem "You logged into a secure área!"
      Entao quando eu clicar no botao Logout devera ser apresentado a mensagem "You logged out of the secure área!"

# Cenario 2

	Cenario: Validar a tentativa de login invalido, sem preencher os campos username e password
	   Dado que eu tenha o link de acesso
     Quando eu tentar efetuar o login sem preencher os campos username e password
      Entao o sistema devera apresentar a mensagem "Your username is invalid!"

# Cenario 3

	Cenario: Validar a tentativa de login invalido, preenchendo apenas o campo username corretamente
	   Dado o link de acesso
     Quando eu tentar efetuar o login, apos preencher apenas o campo username "tomsmith"
      Entao o sistema devera apresentar a mensagem "Your username is invalid!"
	
# Cenario 4 obs: a mensagem de erro do campo password esta incorreta!

	Cenario: Validar a tentativa de login invalido, preenchendo apenas o campo password corretamente
	   Dado o link de acesso
     Quando eu tentar efetuar o login, apos preencher apenas o campo password "SuperSecretPassword!"
      Entao o sistema devera apresentar a mensagem "Your username is invalid!"
	