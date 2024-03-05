Feature: Patch programs on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../post/teacher-post.feature@createteachers")


  @updateprograms
  Scenario: Patch a programsId
    Given url 'https://funcoeback-dev-ceqh.3.us-1.fl0.io/teachers/'   + teacherId + '/'
    And request {"first_name": '#(randomname)',  "last_name": '#(randomlastname)', "phone": '#(randomphone)',  "program_uuid": "50ae87d2-09de-4a87-aeca-a4236d9a602b"}
    When method patch
    Then status 200
    And print "El Registro Se Actualizo De Forma Exitosa" + teacherId




