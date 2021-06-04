Feature: Karate Test Suite 20
  This test suite for validating Splunk logs


  Background: Init
    * def login =
    """
    function(uid, pwd) {
        var temp = uid + ':' + pwd;
        var Base64 = Java.type('java.util.Base64');
        var encoded = Base64.getEncoder().encodeToString(temp.bytes);
        return 'Basic ' + encoded;
    }
    """
    * def auth = login("palmetoadmin", "P@lmeto@123")
    * print auth
    * configure ssl = true

    Given url "https://10.0.0.60:8089"
    And header Authorization = auth


  Scenario: Splunk file log TestCase
    Given path "/services/search/jobs"
    When method get
    Then status 200
    * print response
#    Provides type of output file, for this it is XML file output
    * print responseType
    * match response /feed/authur/name == "Splunk"



  Scenario: Splunk file log TestCase 2
    Given path "/services/alerts/alert_actions"
    When method get
    Then status 200
    * print response
    * match response /feed/entry[1]/title == 'email'


  Scenario: Splunk file log TestCase 3
    Given path "/services/alerts/fired_alerts"
    When method get
    Then status 200
#/feed/content/s:dict/s:key/s:dict/s:key[@name='app']
    * def res = get response /feed/entry/content/dict/key/dict/key[@name='app']
    * def res1 = get response /content/dict/key/dict/key[@name='app']
    * print res
    * match res == "search"

