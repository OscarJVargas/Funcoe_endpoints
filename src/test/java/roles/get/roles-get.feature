Feature: Get all roles on request


  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer "  + token
    * call read("../post/create_rol.feature@createrol")

  Scenario: Get all roles
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/roles/all"
    When method get
    Then status 200
