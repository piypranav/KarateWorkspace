Feature: Karate Test Suite 2
  This is the second test suite for JSON validation

  Scenario: JSON validation 1
    This is the first JSON test case

    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    * print json.id
    * print json.tool.name
    * assert json.id == "102"
    * assert json.tool.name == "Karate"


  Scenario: JSON validation 2
  This is the second JSON test case

    Given def json =
    """
    {
        "id" : "101",
        "tool": { "name":"Karate", "version":"0.9.6"}
     }
    """
    * print json
    * print json.id
    * print json.tool.name
    * assert json.id == "101"
    * assert json.tool.name == "Karate"
    * match json.tool == { "name":"Karate", "version":"0.9.6"}


