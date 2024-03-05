Feature: Post students on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../../advisors/post/advisors-post.feature@createadvisors")



  @createstudents
  Scenario: Post on students
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/students/"
    And request {"document_type_uuid": "09359aab-7354-47c0-ae6b-60d71aea3f08",  "identification_card": "#(randomidcard)",  "birthdate": "2004-03-04",  "first_name": "#(randomname)",  "last_name": "#(randomlastname)",  "municipality": "string",  "address": "string",  "phone": "#(randomphone)",  "email": "#(randomMail)",  "gender_uuid": "20be8f69-c198-467c-89be-ee18a7af8b9b",  "blood_type_uuid": "6f454a83-4201-44e3-b7cf-99ba07464519",  "recommendation": "string",  "advertising_medium": "string",  "day_uuid": "572fd374-ea03-47a1-ab03-51eb27c10b59",  "working_day": "string",  "registration_number": "1",  "advisor_uuid": '#(advisorsId)' }
    When method post
    Then status 200
    * def studentsId = $.uuid_student
    * print " se a creado la identificacion de estudiante # " + studentsId
    * def idcard = $.identification_card
    * print " la cedula del estudiante es la # " + idcard


