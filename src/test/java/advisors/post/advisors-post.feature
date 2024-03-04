Feature: Post advisors on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token



    @createadvisors
  Scenario: Post on advisors
    ## * def random = function(){ var temp = ''; karate.repeat(10, function(){ temp += Math.floor(Math.random() * 10000) + 1 }); return temp; }
    ##* def random = Math.floor(Math.random() * 10000) + 1
    * def random = " ' " + Math.floor(Math.random() * 1000000000000) + 1 + " ' "
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/advisors/"
    And request { "document_type_uuid": "09359aab-7354-47c0-ae6b-60d71aea3f08","identification_card": '#(random)', "first_name": "string", "last_name": "string", "phone": "string", "email": "user@example.com","blood_type": "6f454a83-4201-44e3-b7cf-99ba07464519", "gender_uuid": "20be8f69-c198-467c-89be-ee18a7af8b9b"}
    When method post
    Then status 200
    * def advisorsId = $.uuid_advisor
    * print advisorsId
    * def uuidDt = $.uuid_document_type
    * print uuidDt

