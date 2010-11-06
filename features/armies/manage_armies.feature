Feature: Manage Armies
  In order to more easily prepare for games
  As a gamer
  I want to create and manage armies
  
  Scenario: Armies list
    Given the following armies exist
    | name   | description    | point_total |
    | Army 1 | This is army 1 | 1000        |
    | Army 2 | This is army 2 | 2000        |
    | Army 3 | This is army 3 | 3000        |
    When I go to the list of armies
    Then I should see "Army 1"
    And I should see "Army 2"
    And I should see "Army 3"
    
  Scenario: Create army
    Given no armies exist
    And I am on the list of armies
    When I follow "New Army"
    And I fill in the following:
    | Name        | Gepanzerte Panzergrenadierekompanie |
    | Point Total | 1750                                |
    | Description | Armored panzer grenadier company    |
    And I press "Create Army"
    Then I should see "Army was successfully created."
    And I should see "Gepanzerte Panzergrenadierekompanie"
    And I should see "Armored panzer grenadier company"
    And I should see "1750"
    And I should have 1 army
    
  Scenario: Show army
    Given an army exists with name: "Gepanzerte Panzergrenadierekompanie", description: "Armored panzer grenadier company", point_total: "1750"
    When I go to the show page for that army
    Then I should see "Gepanzerte Panzergrenadierekompanie"
    And I should see "Armored panzer grenadier company"
    And I should see "1750"