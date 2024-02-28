Feature: Get advisors on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token


  Scenario: Get a advisors
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/advisors/all"
    When method get
    Then status 200


