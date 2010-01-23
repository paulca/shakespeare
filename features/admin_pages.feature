Feature: Managing Pages
  In order to update the site
  As an admin
  I want to add, edit and delete pages
  
  Scenario: I'm on the admin layout
    When I am on the pages admin page
    Then I should see "Admin"
  
  Scenario: New Page
    Given I am on the pages admin page
    When I follow "Add a New Page"
      And I fill in "Title" with "Harry and the Hendersons"
      And I fill in "Keywords" with "80s, movie"
      And I check "No-index"
      And I check "No-follow"
      And I check "Set Canonical Tag?"
      And I fill in "Canonical URL" with "http://hendersons.com"
      And I press "Save"
    Then I should see "Harry and the Hendersons"
    
  Scenario: Edit Page
    Given a page titled "Harry and the Hendersons"
      And I am on the pages admin page
    When I follow "Edit"
      And I fill in "Title" with "Three Men and a Baby"
      And I press "Save"
    Then I should see "Three Men and a Baby"
      And I should not see "Harry and the Hendersons"
    
  Scenario: Delete Page
    Given a page titled "The Departed"
    When I am on the pages admin page
    Then I should see "The Departed"

    When I follow "Delete"
    Then I should not see "The Departed"
      