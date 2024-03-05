Feature: Post a shifts


Background:
  * call read("../../user/token/users-token-post.feature@token")
  * header Authorization = "Bearer "  + token


@createshifts
  Scenario: create new shifts
  * def randomhours =  Math.floor(Math.random() * 100) + 1
  * def randomsalary = Math.floor(Math.random() * 10000000) + 1

  Given url 'https://funcoeback-dev-ceqh.3.us-1.fl0.io/shifts/'
  And request { "module_uuid": "d60fefe4-d1e1-4a8c-be8e-fd86400da6ed", "amount_hours": '#(randomhours)', "salary": '#(randomsalary)', "teacher_uuid": "a4c3f7c7-2661-48c4-ac14-a5a72bc46db2"}
  When method post
  Then status 200
  * print randomhours
  * print randomsalary
  * def shiftsId = $.uuid_shifts
  * print shiftsId

