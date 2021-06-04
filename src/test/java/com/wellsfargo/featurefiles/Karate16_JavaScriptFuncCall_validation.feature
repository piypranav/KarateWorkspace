Feature: Karate Test Suite 16
  This test suite for javasccript function call

  Scenario: javasccript function call TestCase 1
  This is for javasccript function call test case1

    * def f1 = function() { return 10; }
    * def f2 =
    """
    function(a) {
    karate.log(a);
     }
    """
    * print f1()
    * f2("hello")
