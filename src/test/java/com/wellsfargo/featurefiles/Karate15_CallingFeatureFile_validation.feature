Feature: Karate Test Suite 15
  Calling feature file

  @rest
  Scenario: Calling test case 1
    Calling scenario module

    * def result = call read("Karate14_CalledFeatureFile_validation.feature@called1")
    * print result
    * print result.response
    * print result.response.title == "karate"

    * def result = call read("Karate14_CalledFeatureFile_validation.feature@called2")
    * print result
    * print result.response
    * match result1.response.title contains "provident"
