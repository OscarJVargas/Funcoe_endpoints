Feature: Post advisors on request

  Scenario: Post a advisors
    Given url "http://127.0.0.1:8000/advisors/"
    When method post
    Then status 200
