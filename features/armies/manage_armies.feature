Feature: Manage Armies
  In order to more easily prepare for games
  As a gamer
  I want to create and manage armies

  Background:
    Given the following armies exist
    | name   |
    | Army 1 |
    | Army 2 |
    | Army 3 |

  Scenario: Armies list
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

  Scenario: Deleting an army
    When I go to the list of armies
    And I follow "Army 1"
    And I follow "Delete Army"
    Then I should see "Army was successfully deleted."
    And an army should not exist with name: "Army 1"
    And I should have 2 armies

   Scenario: Editing an army
     When I go to the list of armies
     And I follow "Army 2"
     And I follow "Edit Army"
     And I fill in "Name" with "Edited Army 2"
     And I press "Update Army"
     Then I should see "Army was successfully updated."
     And an army should exist with name: "Edited Army 2"

  Scenario: Only an administrator or creator should be able to delete an army
    

     
 # Test that only the user or an administrator can delete a users armies



    
