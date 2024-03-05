Feature: Post teachers on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token


  @createteachers
  Scenario: Post on teachers
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
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/teachers/"
    And request {"document_type_uuid": "09359aab-7354-47c0-ae6b-60d71aea3f08", "identification_card": '#(randomidcard)', "first_name": '#(randomname)',  "last_name": '#(randomlastname)',  "blood_type_uuid": "6f454a83-4201-44e3-b7cf-99ba07464519",  "gender_uuid": "20be8f69-c198-467c-89be-ee18a7af8b9b",  "phone": '#(randomphone)',  "user": '#(randomnameuser)',  "password": '#(randompassworduser)', "program_uuid": "50ae87d2-09de-4a87-aeca-a4236d9a602b"}
    When method post
    Then status 200
    * def teacherId = $.uuid_teacher
    * print " se a creado la identificacion del profesor # " + teacherId
    * def idcard = $.identification_card
    * print " la cedula del profesor es la # " + idcard
    * def teacher_name = $.first_name
    * def teacher_last_name = $.last_name
    * print "el nombre completo del teacher es " + teacher_name + " " + teacher_last_name


