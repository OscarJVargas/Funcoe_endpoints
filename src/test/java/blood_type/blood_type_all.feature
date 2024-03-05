Feature: Get all blood_type on request


  Background:
    * call read("../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer "  + token
@alldays
  Scenario: Get all blood_type
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/blood_type/"
    When method get
    Then status 200
