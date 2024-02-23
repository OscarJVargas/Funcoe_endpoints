Feature: Post user on request

  Background:
    * call read("../token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * call read("../rol/create_rol.feature@createrol")

  @Createuser
    Scenario: Post on user
      Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/users/"
      And request {"user": "Oscar", "password": "Oscar2000", "rol_uuid": '##(rolId)'}
      When method post
      Then status 200
    * def userId = $.uuid_user




