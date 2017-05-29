require_relative "C:/Users/Caio Maciel/Desktop/CucumberCapybara-master/CucumberCapybara-master/features/modules/herokuapp_screen_objects"

class HerokuappScreen
  include HerokuappScreenObjects

  attr_reader :username, :password

  def initialize
    @nome_usuario = "username"
    @senha = "password"
    @https_site = "https://the-internet.herokuapp.com/login"
    @id_mensagens = "flash"
  end
end	