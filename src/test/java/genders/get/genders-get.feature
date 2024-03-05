Feature: Get genders on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token



  Scenario: Get a genders
    Given url 'https://funcoeback-dev-ceqh.3.us-1.fl0.io/genders/all/'
    When method get
    Then status 200


