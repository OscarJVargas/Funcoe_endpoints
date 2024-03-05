Feature: Get e on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../post/enrolls-post.feature@createenrolls")



  Scenario: Get a concepts
    Given url 'https://funcoeback-dev-ceqh.3.us-1.fl0.io/concepts/all/' + enrollsid
    When method get
    Then status 200


