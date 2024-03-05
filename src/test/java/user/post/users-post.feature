Feature: Post user on request

  Background:
    * call read("../token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * call read("../../roles/post/create_rol-post.feature@createrol")

  @createuser

    Scenario: Post on user
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

    * def randomnameuser = generateRandomName()

    * def generateRandomPassword =
    """
    function() {
        var chars = 'abcdefghijklmnopqrstuvwxyz1234567890#$%&/():;,!';
        var randomPassword = '';
        for (var i = 0; i < 10; i++) {
            var randomIndex = Math.floor(Math.random() * chars.length);
            randomPassword += chars.charAt(randomIndex);
        }
        return randomPassword;
    }
    """

    * def randompassworduser = generateRandomPassword()
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/users/"
      And request {"user": '#(randomnameuser)', "password": '#(randompassworduser)', "rol_uuid": '##(rolId)'}
      When method post
      Then status 200
    * def userId = $.uuid_user




