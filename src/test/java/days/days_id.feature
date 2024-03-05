Feature: Get all days on request


  Background:
    * call read("../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer "  + token
    * def dayid = $.uuid_day
    * print dayid

  Scenario: Get all days
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/days/" + dayid + "/"
    When method get
    Then status 200