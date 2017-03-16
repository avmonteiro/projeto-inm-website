
Feature: Adicionar Disciplinary Case

	Scenario: Cadastrar Disciplinary Case com sucesso 
		Given enterprise homepage
		Given efetuar login com "peter.mac" e "peter.mac"
		When usuário clicar no link Discipline do menu
		And clicar no botão ADD para adicionar uma nota
		And preencher os campos "Daniel Upton", "Case 2017", "Novo disciplinary Case"
		And clicar no botão salvar
		And clicar no menu de disciplinas
		Then deverá exibir "Case 2017".


		