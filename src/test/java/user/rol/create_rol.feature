Feature: Post a rol


Background:
  * call read("../token/users-token-post.feature@token")
  * header Authorization = "Bearer "  + token


@createrol
  Scenario: create new rol
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
  * def randomnamerol = generateRandomName()
  Given url 'https://funcoeback-dev-ceqh.3.us-1.fl0.io/roles/'
  And request {"rol": '#(randomnamerol)'}
  * print randomnamerol
  When method post
  Then status 200
  * def rolId = $.uuid_rol

