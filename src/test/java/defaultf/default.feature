Feature: Get default on request


  Background:
    * call read("../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer "  + token
  @default
  Scenario: Get default
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io"
    When method get
    Then status 200
