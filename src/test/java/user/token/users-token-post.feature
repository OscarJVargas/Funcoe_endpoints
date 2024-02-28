Feature: JWT Token Feature


@token
  Scenario: Post a token
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/users/token/"
    And request {"user": "ruben1", "password": "ruben123"}
    When method post
    Then status 200
    * def token = $.access_token
