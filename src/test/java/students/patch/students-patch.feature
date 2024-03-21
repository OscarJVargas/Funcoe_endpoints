Feature: Patch programs on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../post/programs-post.feature@createprograms")


  @updateprograms
  Scenario: Patch a programsId
    Given url 'https://funcoeback-dev-ceqh.3.us-1.fl0.io/programs/'   + programsId
    And request {"name": '#(randomname)' }
    When method patch
    Then status 200
    And print "El Registro Se Actualizo De Forma Exitosa" + programsId




