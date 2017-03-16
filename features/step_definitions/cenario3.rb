#encoding: utf-8
#! ~/.rvm/gems/ruby-2.3.3/bin ruby

When(/^efetuar login informações inválidos com "([^"]*)" e "([^"]*)"$/) do |user, pwd|
  @enterprise.login_with(user, pwd)
end

Then(/^login não será realizado e exibirá notificação\.$/) do
  expect(page).to have_content('Enter your username and password, and the verification code (if provided) to retry login.') 
end