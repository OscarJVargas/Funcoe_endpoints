Feature: Post document_type on request

  Scenario: Post a document_type
    Given url "http://127.0.0.1:8000/document_type/"
    When method post
    Then status 200
