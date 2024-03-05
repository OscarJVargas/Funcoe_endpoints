Feature: Get all payments on request


  Background:
    * call read("../../user/token/users-token-post.feature@token")
    * header Authorization = "Bearer "  + token
    * call read("../post/create_payments-post.feature@createpayments")

  Scenario: Get all payments
    Given url "https://funcoeback-dev-ceqh.3.us-1.fl0.io/payments/" + paymentsId
    When method get
    Then status 200
