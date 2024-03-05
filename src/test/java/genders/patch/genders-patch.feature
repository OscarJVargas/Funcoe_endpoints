Feature: Patch genders on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../post/genders-post.feature@creategenders")

  @updategenders
  Scenario: Patch a gendersId
    Given url 'https://funcoeback-dev-ceqh.3.us-1.fl0.io/genders/' + gendersId
    And request { "gender": '#(randomname)' }
    When method patch
    Then status 200
    And print "El Registro Se Actualizo De Forma Exitosa " + gendersId



