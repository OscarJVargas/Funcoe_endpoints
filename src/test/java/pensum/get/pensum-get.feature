Feature: Get all pensum on request


  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer "  + token

  Scenario: Get all pensum
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/pensum/"
    When method get
    Then status 200
