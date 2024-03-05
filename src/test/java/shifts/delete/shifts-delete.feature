Feature: Delete roles on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../post/create_rol.feature@createrol")

  Scenario: Delete a roles
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/roles/" + rolId
    When method delete
    Then status 200