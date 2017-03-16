#encoding: utf-8
#! ~/.rvm/gems/ruby-2.3.3/bin ruby

Given(/^enterprise homepage$/) do
	@enterprise = Enterprise.new
	@enterprise.load
end

Given(/^efetuar login com "([^"]*)" e "([^"]*)"$/) do |user, pwd|
 	@enterprise.login_with(user, pwd)
end

When(/^usuário clicar no link Discipline do menu$/) do
	@enterprise.menu.discipline_menu.click
end

When(/^clicar no botão ADD para adicionar uma nota$/) do
  @enterprise.discipline.add_discipline_button.click
end

When(/^preencher os campos "([^"]*)", "([^"]*)", "([^"]*)"$/) do |arg1, arg2, arg3|
  @enterprise.discipline.fill_new_note(arg1, arg2, arg3)
end

When(/^clicar no botão salvar$/) do
  @enterprise.discipline.save_note
end

When(/^clicar no menu de disciplinas$/) do
  @enterprise.menu.click_back_discipline
end

Then(/^deverá exibir "([^"]*)"\.$/) do |arg1| 
 expect(page).to have_content(arg1)
end
