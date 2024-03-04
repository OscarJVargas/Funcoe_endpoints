Feature: Delete concepts on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../post/concepts-post.feature@createconcepts")

  Scenario: Delete a concepts
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/concepts/"  + conceptsId + "/"
    When method delete
    Then status 200