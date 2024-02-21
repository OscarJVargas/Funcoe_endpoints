Feature: Post a rol


Background:
  * call read("../token/users-token-post.feature@token")
  * header Authorization = "Bearer "  + token


@createrol
  Scenario: create new meter
   Given url 'https://funcoeback-dev-ceqh.3.us-1.fl0.io/roles/'
   And request {"name_rol": "string"}
   When method post
   Then status 200
   And def rolId = $.uuid_rol
   And print rolId
