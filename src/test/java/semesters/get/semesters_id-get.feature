Feature: Get all semesters on request


  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer "  + token
    * call read("../post/create_semesters-post.feature@createsemesters")

  Scenario: Get all semesters
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/semesters/" + semesterId
    When method get
    Then status 200
