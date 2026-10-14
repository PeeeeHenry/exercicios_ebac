#language: pt

Funcionalidade: Tela de cadastro - Checkout
Como cliente da EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra

Contexto: Dado que estou na tela de cadastro do checkout

Cenário: Identificar campos obrigatórios no cadastro
Então todos os campos obrigatórios devem estar claramente identificados com um asterisco (*).

Cenário:Impedir cadastro sem preenchimento dos campos obrigatórios
Dado que existem campos obrigatórios no formulário de cadastro
Quando tento concluir o cadastro sem preencher os campos obrigatórios
Então o sistema deve exibir uma mensagem de erro informando quais campos são obrigatórios

Cenário: Validar formato do e-mail no cadastro
Dado que preenchi os demais campos obrigatórios corretamente
Quando informo o e-mail <email>
E tento concluir o cadastro
Então o resultado da validação deve ser <resultado>

Exemplos:
| email                  | resultado                     |
|exemplo@email.com.br    | "E-mail válido"               |
|exemplo@.com            | "E-mail inválido"             |
|exemplo@email           | "E-mail inválido"             |