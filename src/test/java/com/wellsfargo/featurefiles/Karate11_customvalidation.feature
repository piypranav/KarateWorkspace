Feature: Karate Test Suite 11
  This test suite for Custom Validation


  Scenario: Custom Validation TestCase 1
  Using logical operator &&
    * def a = 12
    * def b = 23
    * assert a == 12 && b == 23


  Scenario: Custom Validation TestCase 2
  Using logical operator ||
    * def a = 12
    * def b = 23
    * assert a == 12 || b > 23


  Scenario: Custom Validation TestCase 3
  Using logical operator !=
    * def a = 12
    * def b = 23
    * assert a != 12

  Scenario: Custom Validation TestCase 4
  Using matchers (data types)
    * def a = 12
    * def b = "testdata"
    * def c = true
    * match a == "#number"
    * match b == "#string"
    * match c == "#boolean"


  Scenario: Custom Validation TestCase 5
  Using matchers (Regular Expression)
    * def a = "1001"
    * def b = "1001.12"
    * def c = "test data from file"
    * def d1 = "KARATE"
    * def d2 = "karate"
    * def d3 = "Karate"
    * def d4 = "karate bdd"
    * def d5 = "cucumber bdd"
    * match a == "#regex \\d+"
    * match b == "#regex \\d+\\.\\d+"
    * match d1 == "#regex [A-Z]+"
    * match d2 == "#regex [a-z]+"
    * match d3 == "#regex [A-Z][a-z]+"
    * match d4 == "#regex (karate|cucumber) bdd"
    * match d5 == "#regex (karate|cucumber) bdd"
    * match c == "#regex (\\w+\\s?)+"
    * match c == "#regex (^test\.*)"
    * match c == "#regex (\.*file$)"
