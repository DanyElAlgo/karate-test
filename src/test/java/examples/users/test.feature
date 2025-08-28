Feature: POSTMAN PORT

  Background:
    * url 'https://gorest.co.in/public/v2'
    * header Accept = 'application/json'
    * header Content-type = 'application/json'
    * header Authorization = 'Bearer 700d0c7a86eb84028bf5cd204b11587f812f9d7cd880dc4edbdbd1d407ae9954'
  Scenario: graphql
  Given path 'graphql'
  When method POST
  Then response.code == 200

  Scenario: delete rest
  Given path 'users/7440286'
  When method DELETE
  Then response.code == 200

  Scenario: create user
  Given path 'users'
  And request '{"name":"Tenali Ramakrishna", "gender":"male", "email":"tenali.ramakrishna@15ce.com", "status":"active"}'
  When method POST
  Then response.code == 200