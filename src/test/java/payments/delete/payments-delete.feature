Feature: Delete payments on request

  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer " + token
    * print token
    * call read("../post/create_payments-post.feature@createpayments")

  Scenario: Delete a payments
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/payments/" + paymentsId
    When method delete
    Then status 200