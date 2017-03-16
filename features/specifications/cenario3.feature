
Feature: Login negativo

	Scenario: Login inválido para realizar cadastro 
		Given enterprise homepage
		When efetuar login informações inválidos com "xxxx" e "yyyy"
		Then login não será realizado e exibirá notificação.