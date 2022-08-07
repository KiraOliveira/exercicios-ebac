      #language: pt

      Funcionalidade: Tela de login
      Como aluno do portal EBAC
      Quero me autenticar
      Para visualizar minhas notas

      ### Cenários sem usar o modo Contexto ###
      Cenário: Autenticação Válida
      Dado que eu acesse a página de autenticação do portal EBAC
      Quando eu digitar o usuário "joao@ebac.com.br"
      E a senha "senha@123"
      Então deve exibir uma mensagem de boas vindas "Olá João"

      Cenário: Usuário inexistente
      Dado que eu acesse a página de autenticação do portal EBAC
      Quando eu digitar o usuário "maria@ebac.com.br"
      E a senha "senha@123"
      Então deve exibir uma mensagem de alerta: "Usuário inexistente"

      Cenário: Usuário com senha inválida
      Dado que eu acesse a página de autenticação do portal EBAC
      Quando eu digitar o usuário "joao@ebac.com.br"
      E a senha "semsenha@123"
      Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

      ###############################################################################

      ### Cenários usando o modo Contexto ###
      Contexto: Dado que eu acesse a página de autenticação do portal EBAC

      Cenário: Autenticação Válida
      Quando eu digitar o usuário "joao@ebac.com.br"
      E a senha "senha@123"
      Então deve exibir uma mensagem de boas vindas "Olá João"

      Cenário: Usuário inexistente
      Quando eu digitar o usuário "maria@ebac.com.br"
      E a senha "senha@123"
      Então deve exibir uma mensagem de alerta: "Usuário inexistente"

      Cenário: Usuário com senha inválida
      Quando eu digitar o usuário "joao@ebac.com.br"
      E a senha "semsenha@123"
      Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

      ###############################################################################

      ###Esquema de cenários para usar tabela ###

      Esquema do Cenário: Autenticar múltiplos usuários
      Quando eu digitar o <usuario>
      E a <senha>
      Então deve exibir a <mensagem> de sucesso!

      Exemplos:
      | usuario             | senha       | mensagem     |
      | "joao@ebac.com.br"  | "teste@123" | "Olá João!"  |
      | "maria@ebac.com.br" | "teste@123" | "Olá Maria!" |
      | "kira@ebac.com.br"  | "teste@123" | "Olá Kira!"  |
      | "beto@ebac.com.br"  | "teste@123" | "Olá Beto!"  |



