require_relative 'menu_section'

class Enterprise < SitePrism::Page

  set_url "https://enterprise-demo.orangehrmlive.com"

  #elements login
  element :username, "input[name='txtUsername']"
  element :password, "input[name='txtPassword']"
  element :btn_login, 'input#btnLogin'

  section :menu, MenuSection, ".menu"
  section :discipline, DisciplineSection, "#content"
	
  def login_with(_username, _password)
    self.username.set _username
    self.password.set _password
    btn_login.click
  end	
end
