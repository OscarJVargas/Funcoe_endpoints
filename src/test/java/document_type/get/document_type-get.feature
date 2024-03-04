Feature: Get document_type on request
  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token

  Scenario: Get a document_type
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/document_type/all"
    When method get
    Then status 200


