Feature: Get all user on request


  Background:
    * call read("../token/users-token-post.feature@token")
    * header Authorization = "Bearer "  + token

  Scenario: Get all user
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/users/all"
    When method get
    Then status 200
