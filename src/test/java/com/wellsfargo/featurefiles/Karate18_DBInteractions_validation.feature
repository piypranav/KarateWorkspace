Feature: Karate Test Suite 18
  This test suite for DB interactions

  Background: dbInit
    * def db = Java.type('utils.MyDBUtils')

  @db
  @select
  Scenario: Select validation DB interaction TestCase
  Select validation DB method call test case1

    * def rows = db.selectStatement("select * from tools")
    * print rows
    * match rows contains "sample9209"


  @db
  @insert
  Scenario: Insert validation DB interaction TestCase
  Insert validation DB method call test case1

    * def results = db.insertStatement("insert into tools values(9209,'sample9209','xyz9209')")
    * print results
    * match results == "Success"
    * def rows = db.selectStatement("select * from tools where toolid=9209")
    * print rows
    * match rows contains "sample9209"


  @db
  @select
  Scenario: Select validation DB interaction TestCase
  Select validation DB method call test case1

    * def rows = db.selectStatement("select * from tools")
    * print rows
    * match rows contains "sample9209"


  @db
  @update
  Scenario: Update validation DB interaction TestCase
  Update validation DB method call test case

    * def rowseffected = db.updateStatement("update tools set toolname='sample9209' where toolid=9209")
    * print rowseffected
    * assert rowseffected >= 1
    * def rows = db.selectStatement("select * from tools where toolid=9209")
    * print rows
    * match rows contains "sample9209"


  @db
  @delete
  Scenario: Delete validation DB interaction TestCase
  Delete validation DB method call test case

    * def rowseffected = db.updateStatement("delete from tools where toolid=9209")
    * print rowseffected
    * assert rowseffected >= 1
    * def rows = db.selectStatement("select * from tools where toolid=9209")
    * print rows
    * match rows !contains "sample9209"