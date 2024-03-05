Feature: Post a payments


Background:
  * call read("../../user/token/users-token-post.feature@token")
  * header Authorization = "Bearer "  + token
  * call read("../../enrolls/post/enrolls-post.feature@createenrolls")
  * call read("../../concepts/post/concepts-post.feature@createconcepts")


@createpayments
  Scenario: create new payments
  * def randomamount =  Math.floor(Math.random() * 10) + 1
  Given url 'https://funcoeback-dev-ceqh.3.us-1.fl0.io/roles/'
  And request {"enroll_uuid": '#(enrollsid)', "concept_uuid": '#(conceptid)', "amount": '#(randomamount)'}
  * print randomamount
  When method post
  Then status 200
  * def paymentsId = $.uuid_payments
