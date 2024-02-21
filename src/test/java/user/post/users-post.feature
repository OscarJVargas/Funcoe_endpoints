Feature: Post user on request

  Background:
    * call read("../token/users-token-post.feature@token")
    * header Authorization = "Bearer "  + token


    Scenario: Post on user
      * call read("../rol/create_rol.feature@createrol")
      Given url 'https://funcoeback-dev-ceqh.3.us-1.fl0.io/users/'
      And print rolId
      And request { "user": "Oscar", "password": "Oscar2000", "rol_uuid": {rolId}}
      When method post
      Then status 200




