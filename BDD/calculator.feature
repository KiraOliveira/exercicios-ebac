Feature: Calculator
  How i don't know making calculations in my head
  I want use the calculator of system
  For i sum 2 numbers

  Scenario: Sum of 2 numbers
    Given i want access the calculator
    When i sum 2 plus 2
    Then the result must be 4

  Scenario Outline: Sum of 2 numbers
    Given i want acess the calculator
    When i sum the <numer1> with <number2>
    Then the result must be <total>

      Exemples:
      | number1 | number2 | total  |
      | "3"     | "8"     | "11"   |
      | "1"     | "2"     | "3"    |
      | "3"     | "7"     | "10"   |
      | "2"     | "8"     | "10"   |
      | "39"    | "8"     | "47"   |
      | "301"   | "102"   | "403"  |
      | "2"     | "25"    | "27"   |
      | "6"     | "81"    | "87"   |
      | "7"     | "19"    | "26"   |
      | "5"     | "154"   | "159"  |
      | "1"     | "752"   | "753"  |
      | "63"    | "965"   | "1028" |
      | "8"     | "2000"  | "2008" |
      | "9"     | "145"   | "154"  |
      | "10"    | "3"     | "13"   |
      | "-52"   | "7"     | "-45"  |
      | "11"    | "2"     | "13"   |
      | "36"    | "9"     | "45"   |
      | "174"   | "7"     | "181"  |
      | "6"     | "-123"  | "-117" |
      | "789"   | "0"     | "789"  |
      | "123"   | "12"    | "135"  |
      | "321"   | "74"    | "395"  |
      | "-25"   | "11"    | "-14"  |
      | "21"    | "3"     | "24"   |
      | "85"    | "9"     | "94"   |
      | "0"     | "7"     | "7"    |
      | "19"    | "-851"  | "-832" |
