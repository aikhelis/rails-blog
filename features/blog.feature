#@javascript
Feature: Personal Blog

  Scenario Outline: View my blog
    When I go to the <page> page
    Then I should be on the <page> page
    Then I should see "<message>"
  Examples:
    | page        | message     |
    | home        | Welcome     |
    | articles    | Articles    |
    | new article | New Article |

  Scenario Outline: Navigate through my blog
    Given I am on the home page
    When I click "<link>"
    Then I should be on the <page> page
  Examples:
    | link     | page     |
    | Articles | articles |

  Scenario: Write an article
    Given I am on the new article page
    When I submit article details:
      | title       | text                      |
      | New article | What a nice weather today |
    Then I should be on the Article page
    And I should see "New article"
