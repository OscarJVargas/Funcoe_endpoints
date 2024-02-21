Feature: JWT Token Feature
@token
  Scenario:
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/users/token"
    And request { "user": "default", "password": "default" }
    When method post
    Then status 200
    And def token = $.access_token
