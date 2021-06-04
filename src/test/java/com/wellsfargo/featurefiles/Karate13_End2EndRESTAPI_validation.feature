Feature: Karate Test Suite 13
  End 2 End Rest API Testing validation (API Chaining)

  @rest
  Scenario: End to End rest Api test

    #--- Creating resource
    Given url "https://jsonplaceholder.typicode.com/posts"
    And header Content-type = "application/json; charset=UTF-8"
    And request
    """
      {
          title: 'Karate',
          body: 'BDD',
          userId: 1909014,
      }
    """
    When method post
    Then status 201
    * def id = response.id
    * print id

    #--- Fetching resource
    Given url "https://jsonplaceholder.typicode.com/posts/" + id
    When method get
    Then status 200
    * match response.title == "Karate"

#--- Updating resource
    Given url "https://jsonplaceholder.typicode.com/posts/" + id
    And header Content-type = "application/json; charset=UTF-8"
    And request "{id: " + id + ", title: 'foo1', body: 'bar1', userId: 1}"
    When method put
    Then status 200

    #--- Deleting resource
    Given url "https://jsonplaceholder.typicode.com/posts/" + id
    When method delete