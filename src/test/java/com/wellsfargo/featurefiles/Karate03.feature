Feature: Karate Test Suite 3
  This is the third test suite for XML validation

  Scenario: XML validation 1
    This is the first XML test case


    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    * print xml
    * print xml/info/id
    * print xml.info.id
    * assert xml.info.id == 101
    * match xml.info.tool contains "<name>Karate</name><version>0.9.6</version>"
    * match xml contains "Karate"


  Scenario: XML validation 2
  This is the second XML test case


    Given def xml =
    """
    <info>
        <tool>
          <name>Karate</name>
          <version>0.9.6</version>
        </tool>
        <tool>
          <name>IntelliJ</name>
         <version>2020.2</version>
        </tool>
    </info>
    """
    * print xml
    * match xml.info.tool[1] contains "<name>Karate</name><version>0.9.6</version>"
    * match xml contains "Karate"