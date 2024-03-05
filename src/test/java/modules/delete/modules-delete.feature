Feature: Delete modules on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../post/modules-post.feature@createmodules")

  Scenario: Delete a modules
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/modules/"  + modulesId + "/"
    When method delete
    Then status 200