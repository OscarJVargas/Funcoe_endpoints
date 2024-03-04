Feature: Get document_type_for_name on request
  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token


  Scenario: Get a document_type_for_name
    Given  url 'https://funcoeback-dev-ceqh.3.us-1.fl0.io/document_type/document/?document=Registro%20Civil'
    When method get
    Then status 200
