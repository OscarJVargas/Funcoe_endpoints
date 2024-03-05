Feature: Post genders on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token


    @creategenders
  Scenario: Post on genders
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

    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/genders/"
    And request {"gender": '#(randomname)'}
    When method post
    Then status 200
    * def gendersId = $.uuid_gender
    * print "su id del genero es " + gendersId

