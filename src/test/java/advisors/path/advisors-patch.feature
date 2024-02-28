Feature: Patch advisors on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * call read("../post/advisors-post.feature@createadvisors")
    * def idcardrandom = " ' " + Math.floor(Math.random() * 100000000000) + 1 + " ' "
    * def telrandom = " ' " + Math.floor(Math.random() * 1000000000) + 1 + " ' "
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/advisors/update/"  + advisorsId
    * print advisorsId
    And header Accept = 'application/json'
    And header Content-Type = 'application/json'
    * def jsonUpdate = read("../../data/Patchadvisors.json")
    * request jsonUpdate
    * print jsonUpdate



  Scenario: Patch on advisors
    When method patch
    Then status 200
    And match $.idad == advisorsId