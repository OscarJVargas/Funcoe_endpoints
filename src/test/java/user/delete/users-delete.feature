Feature: Delete user on request

  Background:
    * call read("../token/users-token-post.feature@token")
    * header Authorization = "Bearer "  + token
    * call read("../post/users-post.feature@createuser")

  Scenario: Delete a user
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/users/" + userId
    When method delete
    Then status 200