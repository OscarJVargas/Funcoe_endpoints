Feature: Post a pensum


Background:
  * call read("../../user/token/users-token-post.feature@token")
  * header Authorization = "Bearer "  + token
  * call read("../../semesters/post/create_semesters-post.feature@createsemesters")
  * call read("../../programs/post/programs-post.feature@createprograms")


@createshifts
  Scenario: create new pensum
  * def randomquantity_classes =  Math.floor(Math.random() * 100) + 1
  * def randomamount_to_paid = Math.floor(Math.random() * 100000) + 1
  Given url 'https://funcoeback-dev-ceqh.3.us-1.fl0.io/pensum/'
  And request {"program_uuid": '#(programsId)', "semester_uuid": '#(semesterId)', "quantity_classes":'#(randomquantity_classes)', "amount_to_paid": '#(randomamount_to_paid)'}
  When method post
  Then status 200
  * def pensumId = $.uuid_pensum
  * print pensumId

