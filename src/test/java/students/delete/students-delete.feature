Feature: Delete programs on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../post/programs-post.feature@createprograms")

  Scenario: Delete a programs
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/programs/"  + programsId + "/"
    When method delete
    Then status 200