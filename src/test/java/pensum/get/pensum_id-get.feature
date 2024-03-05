Feature: Get all shifts on request


  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer "  + token
    * call read("../post/create_pensum-post.feature@createpensum")

  Scenario: Get all shifts
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/pensum/" + pensumId
    When method get
    Then status 200
