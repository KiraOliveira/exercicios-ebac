      #language: pt

      Funcionalidade: Tela de cadastro - Checkout
      Como cliente da EBAC-SHOP
      Quero fazer concluir meu cadastro
      Para finalizar minha compra

      Cenário: Campos obrigtórios preenchidos
      Dado que eu acesse a tela de cadastro
      Quando eu preencher os dados obrigatórios
      E clicar no botão "finalizar compra"
      Então devo ser direcionada para a tela do pedido

      Cenário: Campos obrigtórios vazios
      Dado que eu acesse a tela de cadastro
      Quando eu não preencher os dados obrigatórios
      E clicar no botão "finalizar compra"
      Então os campos devem ficar em evidência

      ######################################################################

      Cenário: E-mail válido
      Dado que eu acesse a tela de cadastro
      Quando eu digitar o "kira@ebac.com.br"
      E clicar no botão "finalizar compra"
      Então devo ser direcionada para a tela do pedido

      Cenário: E-mail inválido
      Dado que eu acesse a tela de cadastro
      Quando eu digitar o "kira.com.br"
      E clicar no botão "finalizar compra"
      Então deve exibir uma mensagem de erro "E-mail com formato inválido"

      ##Esquema de cenários para usar tabela ###

      Esquema do Cenário: Validando formato do e-mail
      Dado que eu acesse a tela de cadastro
      Quando eu digitar <email>
      Então deve exibir uma mensagem <messagem>

      Exemplos:
      | email            | messagem                    |
      | kira@ebac.com.br | "Olá Kira"                  |
      | kira.com.br      | "Formato inválido de email" |
      | beto@ebac.com.br | "Olá Beto"                  |

      ########################################################################

      Cenário: Cadastro com campos preenchidos
      Dado que eu acesse a tela de cadastro
      Quando eu preencher os campos
      E clicar no botão "finalizar compra"
      Então devo ser direcionada para a tela do pedido

      Cenário: Cadastro com campos vazios
      Dado que eu acesse a tela de cadastro
      Quando algum dos campos ficar em branco
      Então deve exibir uma mensagem de alerta "Favor revisar os dados preenchidos"

      ###################################################################

      ### Cenários usando o modo Contexto ###
      Contexto: Dado que eu acesse a tela de cadastro

      Cenário: Campos obrigtórios preenchidos
      Quando eu preencher os dados obrigatórios
      E clicar no botão "finalizar compra"
      Então devo ser direcionada para a tela do pedido

      Cenário: Campos obrigtórios vazios
      Quando eu não preencher os dados obrigatórios
      E clicar no botão "finalizar compra"
      Então os campos devem ficar em evidência

      ######################################################################

      Cenário: E-mail válido
      Quando eu digitar o "kira@ebac.com.br"
      E clicar no botão "finalizar compra"
      Então devo ser direcionada para a tela do pedido

      Cenário: E-mail inválido
      Quando eu digitar o "kira.com.br"
      E clicar no botão "finalizar compra"
      Então deve exibir uma mensagem de erro "E-mail com formato inválido"

      ##Esquema de cenários para usar tabela ###

      Esquema do Cenário: Validando formato do e-mail
      Quando eu digitar <email>
      Então deve exibir uma mensagem <messagem>

      Exemplos:
      | email            | messagem                    |
      | kira@ebac.com.br | "Olá Kira"                  |
      | kira.com.br      | "Formato inválido de email" |
      | beto@ebac.com.br | "Olá Beto"                  |

########################################################################

Cenário: Cadastro com campos preenchidos
Quando eu preencher os campos
E clicar no botão "finalizar compra"
Então devo ser direcionada para a tela do pedido

Cenário: Cadastro com campos vazios
Quando algum dos campos ficar em branco
Então deve exibir uma mensagem de alerta "Existe campos que não foram preenchidos"