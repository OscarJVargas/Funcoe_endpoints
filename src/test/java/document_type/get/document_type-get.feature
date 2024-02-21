Feature: Get document_type on request

  Scenario: Get a document_type
    Given url "http://127.0.0.1:8000/document_type/"
    When method get
    Then status 200


