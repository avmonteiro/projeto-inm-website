class Home < SitePrism::Page

  set_url "http://inmetrics.com.br"

  element :menu_quem_somos, "li#menu-item-2960 a"
  element :title, "a.title"

  def acess_quem_somos
    link_quem_somos.click
  end	
end
