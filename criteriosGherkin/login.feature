#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o meu login(autenticação) na plataforma
Para visualizar meus pedidos

Cenário: Autenticação Válida
Dado que eu acesse a plataforma da EBAC-SHOP
Quando eu inserir o usuário "kira@ebac.com.br"
E a senha "kira@123"
Então devo ser direcionado para a tela de checkout

Cenário: Usuário ou senha inválidos
Dado que eu acesse a plataforma da EBAC-SHOP
Quando eu inserir o usuário "kira@ebac.com.br"
E a senha "abc@123"
Então deve ser exibida uma mensagem de alerta "Usuário ou senha inválidos"

##########################################################################

### Cenários usando o modo Contexto ###

Contexto: Dado que eu acesse a plataforma da EBAC-SHOP

Cenário: Autenticação Válida
Quando eu inserir o usuário "kira@ebac.com.br"
E a senha "kira@123"
Então devo ser direcionado para a tela de checkout

Cenário: Usuário ou senha inválidos
Quando eu inserir o usuário "kira@ebac.com.br"
E a senha "abc@123"
Então deve ser exibido uma mensagem de alerta "Usuário ou senha inválidos"

