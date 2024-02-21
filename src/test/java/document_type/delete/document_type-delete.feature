Feature: Delete document_type on request

  Scenario: Delete a document_type
    Given url "http://127.0.0.1:8000/document_type/"
    When method delete
    Then status 200