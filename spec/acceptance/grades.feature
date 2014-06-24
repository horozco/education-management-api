Feature: API consumer makes a grades request

  Scenario: index
    When I submit a get to "1/organizations/1/grades"
    Then The response code should be 200
    And The JSON response should have a "response" array with at least 1 result

  Scenario: show
    When I submit a get to "1/organizations/1/grades/1"
    Then The response code should be 200
    And The JSON response should have a "response" attribute with the response
