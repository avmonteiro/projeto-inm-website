#encoding: utf-8
#! ~/.rvm/gems/ruby-2.3.3/bin ruby

Given(/^home page da Inmetrics$/) do
  @home = Home.new
  @home.load
end

When(/^clicar no menu Quem Somos$/) do
  action_menu = @home.menu_quem_somos
  action_menu.click
end

Then(/^deverá exibir o texto com descrição sobre o tema$/) do
  expect(page).to have_content('MAIS DE 15 ANOS') 
end


