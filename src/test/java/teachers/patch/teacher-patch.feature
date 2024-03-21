Feature: Patch programs on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../post/teacher-post.feature@createteachers")


  @updateteachertotal
  Scenario: Patch a programsId
    Given url 'https://funcoeback-dev-ceqh.3.us-1.fl0.io/teachers/uuid_teacher?uuid=' + teacherId
    * print teacherId
    And request {"first_name": '#(randomname)',  "last_name": '#(randomlastname)', "phone": '#(randomphone)',  "program_uuid": "50ae87d2-09de-4a87-aeca-a4236d9a602b"}
    When method patch
    Then status 200
    And print "El Registro Se Actualizo De Forma Exitosa " + teacherId

  @updateteachername
  Scenario: Patch a programsId
    * def generateRandomName =
    """
    function() {
        var chars = 'abcdefghijklmnopqrstuvwxyz';
        var randomName = '';
        for (var i = 0; i < 8; i++) {
            var randomIndex = Math.floor(Math.random() * chars.length);
            randomName += chars.charAt(randomIndex);
        }
        return randomName;
    }
    """
    * def randomname = generateRandomName()
    Given url 'https://funcoeback-dev-ceqh.3.us-1.fl0.io/teachers/uuid_teacher?uuid=' + teacherId
    * print teacherId
    And request {"first_name": '#(randomname)'}
    When method patch
    Then status 200
    And print "El Registro Se Actualizo De Forma Exitosa " + teacherId
    And print response


