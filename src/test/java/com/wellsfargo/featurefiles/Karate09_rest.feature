Feature: Karate Test Suite 9
  This test Suite for Rest API with xml output

#1. Response Status Code
#2. Response Header
#3. Format of Response Body
#4. Response Body Content
#5. Performance of API (ResponseTime)
  @soap
  Scenario: SOAP 1.1 REST validation TestCase 1
  This is REST validation validation Test case

    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=40"
    When method post
    Then status 200
    * print response
    * print responseHeaders
    * match response //string == 104
    * print responseTime
    * assert  responseTime <= 1000





  Scenario: SOAP 1.2 validation test case 1
  This is the first SOAP test case


    Given url "https://www.w3schools.com/xml/tempconvert.asmx"
    And header Content-Type = "application/soap+xml; charset=utf-8"
    And request
    """
      <?xml version="1.0" encoding="utf-8"?>
      <soap12:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://www.w3.org/2003/05/soap-envelope">
        <soap12:Body>
          <CelsiusToFahrenheit xmlns="https://www.w3schools.com/xml/">
            <Celsius>40</Celsius>
          </CelsiusToFahrenheit>
        </soap12:Body>
      </soap12:Envelope>
    """
    When method post
    Then status 200
