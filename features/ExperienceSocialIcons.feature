Feature: Verify social share train & comment tool across all asset pages.
Verifying social train buttons - facebook, twitter, email, comment, print, google, linkedin and pinterest on asset pages
Verifying comment tool on asset pages

Background:
When I visit an Experience asset page

# Verify social train appears on assets
@story @gallery @video @share-train
  Scenario: Social Share Train: Buttons viewable
    Given that I am on an experience asset page
    When I click on "<section_href>"
    Then I should see the share buttons "<button_name>"

    Examples:
    | section_href  |  button_name                           |
    |    Facebook   |   .util-bar-btn-facebook               |
    |    Twitter    |   .util-bar-btn-twitter                |
    |    Email      |   .util-bar-btn-email                  |
    |    Comments   |   .util-bar-btn-comments               |
    |    Print      |   .util-bar-btn-print                  |
    |    Google     |   .util-bar-flyout-nav-btn-googleplus  |
    |    LinkedIn   |   .util-bar-flyout-nav-btn-linkedin    |
    |    Pinterest  |   .util-bar-flyout-nav-btn-pinterest   |


# Verify each social media button opens a modal window and shares correct url on assets
@story @gallery @video @share-train
Scenario: Social Share Train: Verify social media opens and correct url is shared
  Given I am on "<url>"
    And I have the visited the following pages:
    Examples:
    | name    | url
    | gallery | /picture-gallery/best-beaches/2015/02/12/8-secluded-beaches-to-visit-in-february/23322333/ |
    | video   | /videos/ |
    | story   | /story/romantic-beach-vacations/2015/02/12/romantic-valentines-day-beaches/23191007/ |
  When I click "<button name>"
  Then the "corresponding share page" should open in a new window
    And the "url" matches the "shared url"

@email @share-train
  Scenario: Social Share Train: Email button opens share window
    Given that I am on an experience "<url>"
    And I click on the "Email" share button
    Then the email window should open

@comment @share-train
  Scenario: Social Share Train: Comment button goes to comment tool window at bottom of page
    Given that I am on an experience "<url>"
    And I click on the "Comment" share button
    Then the "comment form" appears
      And I can add a comment
      And I can click the comment button

@print @share-train
  Scenario: Social Share Train: Print button opens share window
    Given that I am on an experience "<url>"
    And I click on the "Print" share button
    Then the print window should open
