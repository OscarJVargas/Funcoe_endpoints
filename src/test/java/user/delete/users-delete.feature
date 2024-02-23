Feature: Delete user on request


  Background:
    * call read("../token/users-token-post.feature@token")
    * header Authorization = "Bearer "  + token

  Scenario: Delete a user
    Given url "http://127.0.0.1:8000/users/"
    When method delete
    Then status 200