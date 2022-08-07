#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho,gosto e escolher a quantidade
Para depois inserir no carrinho

Cenário: Selecionando itens obrigatórios
Dado que eu sou cliente da EBAC-SHOP
Quando eu selecionar cor e tamanho
E quantidade
E clicar em "comprar"
Então devo ser direcionada para a tela de pagamento

#########################################################

Cenário: Quantidade válida de produtos por venda
Dado que eu sou cliente da EBAC-SHOP
Quando eu selecionar 10 produtos
E clicar em "comprar"
Então devo ser direcionada para a tela de pagamento

Cenário: Quantidade inválida de produtos por venda
Dado que eu sou cliente da EBAC-SHOP
Quando eu selecionar 11 produtos
E clicar em "comprar"
Então deve ser exibido uma mensagem de alerta "É permitido apenas 10 produtos por venda"

######################################################################

Cenário: Limpando itens
Dado que eu sou cliente da EBAC-SHOP
Quando eu clicar no botão "limpar"
Então deve voltar ao estado original

######################################################################

### Cenários usando o modo Contexto ###

Contexto: Dado que eu sou cliente da EBAC-SHOP

Cenário: Selecionando itens obrigatórios
Quando eu selecionar cor e tamanho
E quantidade
E clicar em "comprar"
Então devo ser direcionada para a tela de pagamento

#########################################################

Cenário: Quantidade válida de produtos por venda
Quando eu selecionar 10 produtos
E clicar em "comprar"
Então devo ser direcionada para a tela de pagamento

Cenário: Quantidade inválida de produtos por venda
Quando eu selecionar 11 produtos
E clicar em "comprar"
Então deve ser exibido uma mensagem de alerta "É permitido apenas 10 produtos por venda"

######################################################################

Cenário: Limpando itens
Quando eu clicar no botão "limpar"
Então deve apagar os dados selecionados voltando ao estado original



