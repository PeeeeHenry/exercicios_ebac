#language: pt

Funcionalidade: Configurar Produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
Escolher a quantidade desejada
Para depois inserir no carrinho

Contexto: Dado que estou na página do produto

Cenário: Impedir que o cliente adicione o produto ao carrinho sem selecionar o tamanho
Dado que selecionei a cor do produto
E que não tenho selecionado o tamanho
Quando eu clicar em "Adicionar ao Carrinho"
Então o sistema deve exibir a mensagem "Por favor, selecione um tamanho antes de adicionar ao carrinho."

Cenário: Impedir que o cliente adicione o produto ao carrinho sem selecionar a cor
Dado que selecionei o tamanho do produto
E que não tenho selecionado a cor
Quando eu clicar em "Adicionar ao Carrinho"
Então o sistema deve exibir a mensagem "Por favor, selecione uma cor antes de adicionar ao carrinho."

Cenário: Impedir que o cliente adicione mais de 10 itens ao carrinho
Dado que selecionei o tamanho e a cor do produto
E que já selecionei a quantidade de 10 itens
Quando eu clicar em "Adicionar ao Carrinho"
Então o sistema deve exibir a mensagem "A quantidade máxima permitida é de 10 itens por pedido. Por favor, ajuste a quantidade antes de adicionar ao carrinho."

Cenário: Limpar a configuração do produto
Dado que selecionei uma cor, um tamanho e uma quantidade para o produto
Quando clico no botão "Limpar"
Então o sistema deve limpar todas as seleções feitas, retornando o produto ao estado inicial, sem cor, tamanho ou quantidade selecionados.

Cenário: Respeitar o limite de 10 produtos por pedido
Dado que selecionei a cor "<cor>" e o tamanho "<tamanho>" do produto
Quando informo a quantidade "<quantidade>" e clico em "Adicionar ao Carrinho"
Então o sistema deve exibir a mensagem "<mensagem>"

Exemplos:
| cor      | tamanho | quantidade | mensagem                                                                   |
| Vermelho | P       | 11         | "A quantidade máxima permitida é de 10 itens por pedido."                  |
| Preto    | M       | 15         | "A quantidade máxima permitida é de 10 itens por pedido."                  |
| Azul     | G       | 2          | "Quantidade aceita."                                                       |
| Branco   | GG      | 5          | "Quantidade aceita."                                                       |

