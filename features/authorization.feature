Feature: Authentication and Authorization
      In order to prevent unauthorized access to my home
      I want to limit who can remotely open and close the garage door
  
  @ignore
  Scenario: Can't open or close main door when not authorized
    Given I am not authorized to open or close the door
    When I request the main door open or close 
    Then I should see a message indicating that I am not authorized 

  @ignore
  Scenario: Can't open or close secondary door when not authorized
    Given I am not authorized to open or close the door
    When I request the secondary door open or close 
    Then I should see a message indicating that I am not authorized 
