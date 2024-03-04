Feature: Get document_type_id on request
  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token

  Scenario: Get a id_document_type
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/document_type/" + "1f88b803-880f-4b71-9a74-bc0d4ddd9bac"
    When method get
    Then status 200

