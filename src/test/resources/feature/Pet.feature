Feature: Pet - Everything About Your Pets

  Background:

    #* def urlBase = 'https://petstore.swagger.io'
    * url baseUrl
    * def petPath = '/v2/pet'
    * def statusPath = '/findByStatus'

  Scenario Outline: Finds Pets by Status

    Given url baseUrl + petPath + statusPath
    And header Content-Type = 'application/json'
    And params { status: <statusInfo> }
    When method GET
    Then status 200
    * print response

    Examples:
      | statusInfo |
      | available  |
      | pending    |
      | sold       |