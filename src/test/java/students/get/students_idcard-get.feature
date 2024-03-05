Feature: Get studentsIdcard on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../post/students-post.feature@createstudents")



  Scenario: Get a studentsIdcard
    Given url 'https://funcoeback-dev-ceqh.3.us-1.fl0.io/students/' + idcard
    When method get
    Then status 200


