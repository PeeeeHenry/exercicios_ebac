#language: pt

Funcionalidade: Configurar Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
Escolher a quantidade desejada
Para depois inserir no carrinho

Contexto: Dado que estou na página do produto

Cenário: Impedir que o cliente adicione o produto ao carrinho sem selecionar o tamanho
Dado que o cliente selecionou a cor do produto
Quando o cliente não selecionar o tamanho e clicar em "Adicionar ao Carrinho"
Então o sistema deve exibir a mensagem "Por favor, selecione um tamanho antes de adicionar ao carrinho."

Cenário: Impedir que o cliente adicione o produto ao carrinho sem selecionar a cor
Dado que o cliente selecionou o tamanho do produto
Quando o cliente não selecionar a cor e clicar em "Adicionar ao Carrinho"
Então o sistema deve exibir a mensagem "Por favor, selecione uma cor antes de adicionar ao carrinho."

Cenário: Impedir que o cliente adicione mais de 10 itens ao carrinho
Dado que o cliente selecionou o tamanho e a cor do produto
E que já selecionou a quantidade de 10 itens
Quando o cliente selecionar um novo produto e clicar em "Adicionar ao Carrinho"
Então o sistema deve exibir a mensagem "A quantidade máxima permitida é de 10 itens por pedido. Por favor, ajuste a quantidade antes de adicionar ao carrinho."

Cenário: Limpar a configuração do produto
Dado que o cliente selecionou uma cor, um tamanho e uma quantidade para o produto
Quando o cliente clica no botão "Limpar"
Então o sistema deve limpar todas as seleções feitas, retornando o produto ao estado inicial, sem cor, tamanho ou quantidade selecionados.

Esquema do Cenário: Respeitar o limite de 10 produtos por pedido
Dado que selecionei a cor e o tamanho do produto
Quando informo a quantidade "<quantidade>" e clico em "Adicionar ao Carrinho"
Então o sistema deve exibir a mensagem "<mensagem>"

Exemplos:
| quantidade | mensagem                                                                   |
| 11         | "A quantidade máxima permitida é de 10 itens por pedido."                  |
| 15         | "A quantidade máxima permitida é de 10 itens por pedido."                  |
| 2          | "Quantidade aceita."                                                       |
| 5          | "Quantidade aceita."                                                       |

