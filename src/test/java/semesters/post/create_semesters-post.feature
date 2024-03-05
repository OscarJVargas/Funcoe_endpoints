Feature: Post a semesters
Background:
  * call read("../../user/token/users-token-post.feature@token")
  * header Authorization = "Bearer "  + token


@createsemesters
  Scenario: create new semesters
  * def randomsemester =  "'" + Math.floor(Math.random() * 10) + 1 + "'"
  Given url 'https://funcoeback-dev-ceqh.3.us-1.fl0.io/semesters/'
  And request {"uuid_semester": '#(semesterId)', "name": '#(randomsemester)', "created_at": "2024-03-05T01:57:40.915Z", "updated_at": "2024-03-05T01:57:40.915Z"}
  When method post
  Then status 200
  * def semesterId = $.uuid_semester
  * print semesterId

