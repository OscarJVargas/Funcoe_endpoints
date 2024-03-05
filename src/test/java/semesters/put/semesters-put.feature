Feature: Put semesters on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../post/create_semesters-post.feature@createsemesters")


  @updatesemesters
  Scenario: Put a semesters
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/semesters/"   + semesterId + "/"
    And request {"name": '#(randomname)'}
    When method put
    Then status 200
    And print "El Registro Se Actualizo De Forma Exitosa" + semesterId




