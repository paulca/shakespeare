Feature: Public Pages
  In order to find out more information
  As a user
  I want to be able to see what's on a page
  
  Scenario: A public page
    Given a page titled "Mr. MacAllister's Christmas"
      And page "Mr. MacAllister's Christmas" has content "I was Home Alone"
    
    When I am on the page for "Mr. MacAllister's Christmas"
    
    Then I should see "I was Home Alone"