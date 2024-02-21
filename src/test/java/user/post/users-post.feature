Feature: Post user on request

  Background:
    * call read("../token/users-token-post.feature@token")
    * header Authorization = "Bearer "  + token



