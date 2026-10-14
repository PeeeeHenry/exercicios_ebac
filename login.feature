#language: pt

Funcionalidade: Tela de Login
Como cliente da EBAC-SHOP
Quero fazer a autenticação na plataforma
PAra visualizar meus pedidos

Contexto: Dado que estou na tela de login da EBAC-SHOP

Cenário: Realizar login com credenciais válidas
Quando informo um usuário válido e uma senha válida
E clico no botão de login
Então devo ser redirecionado para tela de checkout

Cenário: Realizar login com credenciais inválidas
Quando informo um usuário inválido ou uma senha inválida
E clico no botão de login
Então devo ver uma mensagem de erro indicando "Usuário ou senha inválidos"
