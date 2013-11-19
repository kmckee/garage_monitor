Feature: Opening and closing the garage door
  I want to be able to initiate opening or closing the door over an internet connection
  So that I can remotely open and close my garage doors

  Scenario: Opening or closing the main garage door
    Given the garage door is ready for a command 
    When I request the main door open or close (with the correct secret code)
    Then I should see a message indicating that the main door was opened or closed
    And the main door should open or close

    @ignore
  Scenario: Invalid passcode
    Given the garage door is ready for a command 
    When I request the main door open or close but I do not specify the correct secret code 
    Then I should see a message indicating that the passcode was incorrect
    And the main door should not open or close

    @ignore
  Scenario: No passcode specified
    Given the garage door is ready for a command 
    When I request the main door open or close and I do not specify any secret code 
    Then I should receive no feedback
    And the main door should not open or close

    @ignore
  Scenario: Opening or closing the secondary garage door
    Given the garage door is ready for a command 
    When I request the secondary door open or close (with the correct secret code)
    Then I should see a message indicating that the secondary door was opened or closed
    And the secondary door should open or close

    @ignore
  Scenario: Too many invalid passcodes entered
    Given the garage door is ready for a command
    And I requested the main door open or close with the wrong password 10 times in the last hour
    When I request the main door open or close (with the correct secret code)
    Then I should see a message indicating that the passcode was incorrect
    And the main door should not open or close
