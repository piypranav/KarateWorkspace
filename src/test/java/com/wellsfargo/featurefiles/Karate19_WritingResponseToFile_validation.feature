Feature: Karate Test Suite 19
  This test suite for writing to external file


  Scenario: Writing to external file TestCase
    * def util = Java.type("utils.BDDUtil")
    Given url "https://jsonplaceholder.typicode.com/posts/1"
    When method get
    Then status 200
    * def result = get response
    * util.writeToFile("Karate19File.json", result);

#    After writing the file now reading the same and printing the output
    * def fileResponse = read('classpath:Karate19File.json')
    * print fileResponse



