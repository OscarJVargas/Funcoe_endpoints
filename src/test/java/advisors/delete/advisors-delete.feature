Feature: Delete advisors on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../post/advisors-post.feature@createadvisors")


  Scenario: Delete a advisors
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/advisors/"  + advisorsId + "/"
    When method delete
    Then status 200