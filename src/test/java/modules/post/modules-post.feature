Feature: Post modules on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../../programs/post/programs-post.feature@createprograms")
    * call read("../../semesters/post/create_semesters-post.feature@createsemesters")



    @createmodules
  Scenario: Post on modules
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

    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/modules/"
    And request {"name": '#(randomname)', "program_uuid": '#(programsId)', "semester_uuid": '#(semesterId)'}
    When method post
    Then status 200
    * def modulesId = $.uuid_module
    * print modulesId
