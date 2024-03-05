Feature: Get genders_id on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../post/genders-post.feature@creategenders")

  Scenario: Get a genders_id
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/genders/" + gendersId
    When method get
    Then status 200


