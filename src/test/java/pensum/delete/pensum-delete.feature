Feature: Delete pensum on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../post/create_pensum-post.feature@createpensum")

  Scenario: Delete a pensum
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/pensum/" + pensumId
    When method delete
    Then status 200