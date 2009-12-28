Feature: Managing Pages
  In order to update the site
  As an admin
  I want to add, edit and delete pages
  
  Scenario: Pages Manager
   When I am on the pages admin page
    And I follow "Add a New Page"
    And I fill in "Title" with "Harry and the Hendersons"
    And I press "Save"
  Then I should see "Harry and the Hendersons"