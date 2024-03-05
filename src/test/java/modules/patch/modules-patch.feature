Feature: Patch modules on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../../programs/post/programs-post.feature@createprograms")
    * call read("../../semesters/post/create_semesters-post.feature@createsemesters")


  @updatemodules
  Scenario: Patch a programsId
    Given url 'https://funcoeback-dev-ceqh.3.us-1.fl0.io/modules/'   + modulesId
    And request {"name": '#(randomname)', "program_uuid": '#(programsId)', "semester_uuid": '#(semesterId)'}
    When method patch
    Then status 200
    And print "El Registro Se Actualizo De Forma Exitosa" + modulesId




