Feature: Delete teachers on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../post/teacher-post.feature@createteachers")

  Scenario: Delete a teachers
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/teachers/"  + teacherId + "/"
    When method delete
    Then status 200