Feature: Advanced FSAR Widget Scenarios

  Scenario: Verify widgets display on the page
    Given I am on the fsar widgets page
    Then I verify widgets display on the page
    Then I verify the widgets table has "3" rows

  Scenario: Fill out the new widget form
    Given I am on the new widget page
    And I fill out the new widget form