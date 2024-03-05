Feature: Get teacherIdcard on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../post/teacher-post.feature@createteachers")



  Scenario: Get a teacherIdcard
    Given url 'https://funcoeback-dev-ceqh.3.us-1.fl0.io/teachers/' + idcard
    When method get
    Then status 200


