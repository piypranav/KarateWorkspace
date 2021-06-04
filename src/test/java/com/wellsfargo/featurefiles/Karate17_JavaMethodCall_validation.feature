Feature: Karate Test Suite 17
  This test suite for java method call

  Scenario: java static method call TestCase 1
  This is for java static method call test case1

    * def result1 =
    """
    function()
    {
    var a = Java.type('com.wellsfargo.utils.BDDUtil');
    return a.getStaticMethod();
    }
    """
    * print result1()


  Scenario: java non static method call TestCase 2
  This is for java non static method call test case2

    * def result1 =
    """
    function()
    {
    var a = Java.type('com.wellsfargo.utils.BDDUtil');
    var b = new a();
    return b.getNonStaticMethod();
    }
    """
    * print result1()
