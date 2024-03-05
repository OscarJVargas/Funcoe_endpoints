Feature: Delete genders on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../post/genders-post.feature@creategenders")

  Scenario: Delete a genders
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/genders/"  + gendersId
    When method delete
    Then status 200