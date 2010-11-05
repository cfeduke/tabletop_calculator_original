Feature: Add new army
  In order to create a new army
  As a user of the system
  I want to create an army
  
  @wip
  Scenario: Adding an army
    Given I am on the create army page
    When I fill in the following:
    | Name          | Gepanzerte Panzergrenadierekompanie |
    | Point Total   | 1750                                |
    | Description   | Armored panzer grenadier company    |
    And I press "Create Army"
    Then the created army should have the following values:
    
    
  