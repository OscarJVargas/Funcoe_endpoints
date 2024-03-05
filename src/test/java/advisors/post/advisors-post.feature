Feature: Post advisors on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token


    @createadvisors
  Scenario: Post on advisors
    ## * def random = function(){ var temp = ''; karate.repeat(10, function(){ temp += Math.floor(Math.random() * 10000) + 1 }); return temp; }
    ##* def random = Math.floor(Math.random() * 10000) + 1
    * def randomidcard = " ' " + Math.floor(Math.random() * 1000000000000) + 1 + " ' "
    * def randomphone = " +57 " + Math.floor(Math.random() * 1000000000) + 1 + " ' "
      * def generateRandomMail =
    """
    function() {
        var chars = 'abcdefghijklmnopqrstuvwxyz';
        var randomMail = '';
        for (var i = 0; i < 8; i++) {
            var randomIndex = Math.floor(Math.random() * chars.length);
            randomMail += chars.charAt(randomIndex);
        }
        return randomMail;
    }
    """

    * def randomMail = generateRandomMail() + "@gmail.com"
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

    * def generateRandomLastName =
    """
    function() {
        var chars = 'abcdefghijklmnopqrstuvwxyz';
        var randomlastname = '';
        for (var i = 0; i < 8; i++) {
            var randomIndex = Math.floor(Math.random() * chars.length);
            randomlastname += chars.charAt(randomIndex);
        }
        return randomlastname;
    }
    """
    * def randomlastname = generateRandomLastName()
      * def currentDate = karate.now
      * print 'Fecha actual:', currentDate

    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/advisors/"
    And request { "document_type_uuid": "09359aab-7354-47c0-ae6b-60d71aea3f08","identification_card": '#(randomidcard)', "first_name": '#(randomname)', "last_name": '#(randomlastname)', "phone": '#(randomphone)', "email": '#(randomMail)',"blood_type": "6f454a83-4201-44e3-b7cf-99ba07464519", "gender_uuid": "20be8f69-c198-467c-89be-ee18a7af8b9b"}
    When method post
    Then status 200
    * def advisorsId = $.uuid_advisor
    * print  advisorsId

