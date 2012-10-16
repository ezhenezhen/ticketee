Feature: Viewing tickets
  In order to view tickets for a project
  As a user
  I want to see them on that project's page

Background:
  Given there are the following users:
  | email             | password |
  | user@ticketee.com | password |
  And there is a project called "TextMate 2"
  And "user@ticketee.com" has created a ticket for this project:
    | title          | description  |
    | Make it shiny! | Gradients! Starbursts! Oh my! |
  And "user@ticketee.com" has created a ticket for this project:
    | title                | description  |
    | Standards compliance | Isn't a joke |

  Scenario: Viewing tickets for a given project
    Given I am on the homepage
    When I follow "TextMate 2"
    Then I should see "Make it shiny!"
    And I should see "Standards compliance"
    When I follow "Make it shiny!"
    Then I should see "Make it shiny!" within "#ticket h2"
    And I should see "Gradients! Starbursts! Oh my!"

    When I follow "Ticketee"
    And I follow "TextMate 2"
    And I follow "Standards compliance"
    Then I should see "Standards compliance" within "#ticket h2"
    And I should see "Isn't a joke"
