Feature: Opening and closing the garage door
  I want to be able to initiate opening or closing the door over an internet connection
  So that I can remotely open and close my garage doors

  Scenario: Opening or closing the main garage door
    When I request the main door open or close
    Then I should see a message indicating that the main door was opened or closed

  Scenario: Opening or closing the secondary garage door
    When I request the secondary door open or close 
    Then I should see a message indicating that the secondary door was opened or closed
