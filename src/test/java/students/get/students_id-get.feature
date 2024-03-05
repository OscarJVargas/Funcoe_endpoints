Feature: Get studentsId on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../post/students-post.feature@createstudents")


  Scenario: Get a studentsId
    Given url 'https://funcoeback-dev-ceqh.3.us-1.fl0.io/stundents/' + studentsId
    When method get
    Then status 200


