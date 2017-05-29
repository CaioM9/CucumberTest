module HerokuappScreenObjects
  include Capybara
  include Test::Unit::Assertions

  def preenche_nome_usuario valor
    fill_in @nome_usuario, :with => valor
  end

  def preenche_senha valor
    fill_in @senha, :with => valor
  end

  def clica local
    click_on local
    espera_por 1
  end

  def tem_mensagem? mensagem
    messagem_bem_vindo_pagina = page.find(:id, @id_mensagens).text.to_s
    assert messagem_bem_vindo_pagina.include? mensagem
end

  def espera_por segundos
    sleep segundos
  end

  def acessa_herokuapp
    visit @https_site
  end
end
