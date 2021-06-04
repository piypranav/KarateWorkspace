Feature: Karate Test Suite 12
  Data Driven Testing validation

  @ddt
  Scenario Outline: Performing Data Driven Testing validation
  Validation on data driven test


    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=<Celsius>"
    When method post
    Then status 200
    * print response
    * print responseHeaders
    * match response //string == "<Fahrenheit>"

  Examples:
  |Celsius|Fahrenheit|
  |40     |104       |
  |37     |98.6      |
  |abc    |Error   |



  Scenario Outline: Using Reading external csv file
  Validation on data driven test

    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=<Celsius>"
    When method post
    Then status 200
    * print response
    * print responseHeaders
    * match response //string == "<Fahrenheit>"

  Examples:
  |read("dd01.csv")|


