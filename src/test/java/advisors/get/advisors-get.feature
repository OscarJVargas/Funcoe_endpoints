Feature: Get advisors on request

  Scenario: Get a advisors
    Given url "http://127.0.0.1:8000/advisors/"
    When method get
    Then status 200


