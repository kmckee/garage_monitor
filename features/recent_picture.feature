Feature: Viewing a recent photo of the garage
  In order to know if the garage doors are open or closed
  I want to be able to view a recent photo of the garage doors

  @ignore
  Scenario: Viewing a recent photo of the garage doors
    When I request a recent photo of the garage
    Then I should see a recent photo of the garage 
  
  
