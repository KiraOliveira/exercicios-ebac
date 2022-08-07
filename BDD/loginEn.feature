Feature: Login acess
  How student of portal EBAC
  I want authenticate mine access
  For to view my notes


  ### Scenarios without context use ###

  Scenario: Valid authentication
    Given i what access the page of authentication of portal EBAC
    When i type the user "joao@ebac.com.br"
    And the password "senha@123"
    Then show me a message of welcome "Hello João"

  Scenario: User nonexistent
    Given i what access the page of authentication of portal EBAC
    When i type the user "maria@ebac.com.br"
    And the password "senha@123"
    Then show me a message of alert "User nonexistent"

  Scenario: User with password invalid
    Given i what access the page of authentication of portal EBAC
    When i type the user "joao@ebac.com.br"
    And the password "semsenha@123"
    Then show me a message of alert "User or password invalid"

  ###############################################################################

  ### Scenarios context use ###

  Background: Given i what access the page of authentication of portal EBAC

  Scenario: Valid authentication
    When i type the user "joao@ebac.com.br"
    And the password "senha@123"
    Then show me a message of welcome "Hello João"

  Scenario: User nonexistent
    When i type the user "maria@ebac.com.br"
    And the password "senha@123"
    Then show me a message of alert "User nonexistent"

  Scenario: User with password invalid
    When i type the user "joao@ebac.com.br"
    And the password "semsenha@123"
    Then show me a message of alert "User or password invalid"

  ###############################################################################

  ### Scenario outline for table use ###

  Scenario Outline: Authentication multiple users
    When i type the <user>
    And the <password>
    Then show me the <message> of sucess!

      Exemples:
      | user                | password    | message      |
      | "joao@ebac.com.br"  | "teste@123" | "Olá João!"  |
      | "maria@ebac.com.br" | "teste@123" | "Olá Maria!" |
      | "kira@ebac.com.br"  | "teste@123" | "Olá Kira!"  |
      | "beto@ebac.com.br"  | "teste@123" | "Olá Beto!"  |
