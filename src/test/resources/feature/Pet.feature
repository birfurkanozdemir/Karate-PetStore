Feature: Pet - Everything About Your Pets

  Background:

    * def urlBase = 'https://petstore.swagger.io'
    * def petPath = '/pet'
    * def uploadImagePath = '/{petId}/uploadImage'

  Scenario: Uploads an Image

    Given url urlBase + petPath + uploadImagePath
    When method POST
    Then status 200