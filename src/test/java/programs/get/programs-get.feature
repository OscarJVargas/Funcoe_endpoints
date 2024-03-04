Feature: Get programs on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token



  Scenario: Get a programs
    Given url 'https://funcoeback-dev-ceqh.3.us-1.fl0.io/programs/all/'
    When method get
    Then status 200


