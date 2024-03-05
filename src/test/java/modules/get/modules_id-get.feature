Feature: Get modules on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../post/modules-post.feature@createmodules")



  Scenario: Get a programsId
    Given url 'https://funcoeback-dev-ceqh.3.us-1.fl0.io/modules/'   + modulesId + "/"
    When method get
    Then status 200


