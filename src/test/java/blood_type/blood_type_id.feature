Feature: Get all days on request


  Background:
    * call read("../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer "  + token
    * def bloodid = $.uuid_blood_type
    * print bloodid

  Scenario: Get all days
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/blood_type/" + bloodid + "/"
    When method get
    Then status 200