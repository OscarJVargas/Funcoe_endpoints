Feature: Get user on request


  Background
    * call read("../token/users-token-post.feature@token")
    * header Authorization = Bearer + 'token'
    #aqui se hae una prueba


  Scenario: Get a user
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/users/"
    When method get
    Then status 200
