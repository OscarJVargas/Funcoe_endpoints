Feature: Post concepts on enrolls

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../../semesters/post/create_semesters-post.feature@createsemesters")
    * call read("../../students/post/students-post.feature@createstudents")
    * call read("../../programs/post/programs-post.feature@createprograms")



    @createenrolls
  Scenario: Post on enrolls
    * def randomamount =  Math.floor(Math.random() * 10) + 1
    * def randomoutstanding_balance =  Math.floor(Math.random() * 10) + 1
    * def randompositive_balance =  Math.floor(Math.random() * 1000) + 1
    * def randomdues =  Math.floor(Math.random() * 10000) + 1
    * def randomnumber_of_installments =  Math.floor(Math.random() * 100) + 1
    * def installment_value =  Math.floor(Math.random() * 100) + 1
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/enrolls/"
    And request {"uuid_enroll": "#(enrollsId)","student_uuid": '#(studentsId)', "program_uuid": '#(programsId)', "semester_uuid": '#(semesterId)', "amount": '#(randomamount)', "outstanding_balance": '#(randomoutstanding_balance)', "positive_balance": '#(randompositive_balance)', "dues": '#(randomdues)', "number_of_installments": '#(randomnumber_of_installments)', "installment_value": '#(installment_value)'}
    When method post
    Then status 200
    * def enrollsId = $.uuid_enroll
    * print enrollsId
