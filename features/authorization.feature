Feature: Authentication and Authorization
      In order to prevent unauthorized access to my home
      I want to limit who can remotely open and close the garage door
  
  @ignore
  Scenario: Invalid passcode
    Given I am not authorized to open or close the door
    When I request the main door open or close 
    Then I should see a message indicating that the passcode was incorrect
    And the main door should not open or close
