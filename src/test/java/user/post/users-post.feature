Feature: Post user on request

  Scenario: Post a user
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/docs#/Users/token"
    When method Post
    Then status 200

    @create
    Scenario:
      Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/docs#/Users/token"
      And request { "user": "default", "password": "default" }
      When method post
      Then status 200
      And def token = $.access_token

