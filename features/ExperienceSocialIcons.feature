Feature: Verify social share train & comment tool across all asset pages.
Verifying social train buttons - facebook, twitter, email, comment, print, google, linkedin and pinterest on asset pages
Verifying comment tool on asset pages

Background:
When I visit an Experience asset page

# Verify social train appears assets
@story @gallery @video @share-train
  Scenario: Social Share Train: Buttons viewable
    Given that I am on a experience story page
    Then I should see a share button for "Facebook"
    And I should see a share button for "Twitter"
    And I should see a share button for "Email"
    And I should see a share button for "Comments"
    And I should see a share button for "Print"
    And I should see a share button for "Google"
    And I should see a share button for "LinkedIn"
    And I should see a share button for "Pinterest"

# Verify each social media button opens a modal window and shares correct url on story assets
@story @share-train
  Scenario: Social Share Train: Facebook button opens share window
    Given that I am on a experience story page
    And I click on the "Facebook" share button
    Then the "corresponding share page" should open in a new window
      And the "url" matches the "shared url"

@story @share-train
  Scenario: Social Share Train: Twitter link opens share window
    Given that I am on a experience story page
    And I click on the "Twitter" share button
    Then the "corresponding share page" should open in a new window
      And the "url" matches the "shared url"

@story @share-train
  Scenario: Social Share Train: Email button opens share window
    Given that I am on a experience story page
    And I click on the "Email" share button
    Then the "corresponding share page" should open in a new window
      And the "url" matches the "shared url"

@story @share-train
  Scenario: Social Share Train: Comment button goes to comment tool window at bottom of page
    Given that I am on a experience story page
    And I click on the "Comment" share button
    Then the "comment tool box" appears
      And I can add a comment

@story @share-train
  Scenario: Social Share Train: Print button opens share window
    Given that I am on a experience story page
    And I click on the "Email" share button
    Then the "corresponding share page" should open in a new window
      And the "url" matches the "shared url"

@story @share-train
  Scenario: Social Share Train: Google link opens share window
    Given that I am on a experience story page
    And I click on the "Google" share button
    Then the "corresponding share page" should open in a new window
      And the "url" matches the "shared url"

@story @share-train
  Scenario: Social Share Train: LinkedIn link opens share window
    Given that I am on a experience story page
    And I click on the "LinkedIn" share button
    Then the "corresponding share page" should open in a new window
      And the "url" matches the "shared url"

@story @share-train
  Scenario: Social Share Train: Pinterest link opens share window
    Given that I am on a experience story page
    And I click on the "Pinterest" share button
    Then the "corresponding share page" should open in a new window
      And the "url" matches the "shared url"

# Verify each social media button opens a modal window and shares correct url on gallery assets
@gallery @share-train
  Scenario: Social Share Train: Facebook button opens share window
    Given that I am on a experience gallery page
    And I click on the "Facebook" share button
    Then the "corresponding share page" should open in a new window
      And the "url" matches the "shared url"

@gallery @share-train
  Scenario: Social Share Train: Twitter link opens share window
    Given that I am on a experience gallery page
    And I click on the "Twitter" share button
    Then the "corresponding share page" should open in a new window
      And the "url" matches the "shared url"

@gallery @share-train
  Scenario: Social Share Train: Email button opens share window
    Given that I am on a experience gallery page
    And I click on the "Email" share button
    Then the "corresponding share page" should open in a new window
      And the "url" matches the "shared url"

@gallery @share-train
  Scenario: Social Share Train: Comment button goes to comment tool window at bottom of page
    Given that I am on a experience gallery page
    And I click on the "Comment" share button
    Then the "comment tool box" appears
      And I can add a comment

@gallery @share-train
  Scenario: Social Share Train: Print button opens share window
    Given that I am on a experience gallery page
    And I click on the "Email" share button
    Then the "corresponding share page" should open in a new window
      And the "url" matches the "shared url"

@gallery @share-train
  Scenario: Social Share Train: Google link opens share window
    Given that I am on a experience gallery page
    And I click on the "Google" share button
    Then the "corresponding share page" should open in a new window
      And the "url" matches the "shared url"

@gallery @share-train
  Scenario: Social Share Train: LinkedIn link opens share window
    Given that I am on a experience gallery page
    And I click on the "LinkedIn" share button
    Then the "corresponding share page" should open in a new window
      And the "url" matches the "shared url"

@gallery @share-train
  Scenario: Social Share Train: Pinterest link opens share window
    Given that I am on a experience gallery page
    And I click on the "Pinterest" share button
    Then the "corresponding share page" should open in a new window
      And the "url" matches the "shared url"

# Verify each social media button opens a modal window and shares correct url on video assets
@video @share-train
  Scenario: Social Share Train: Facebook button opens share window
    Given that I am on a experience video page
    And I click on the "Facebook" share button
    Then the "corresponding share page" should open in a new window
      And the "url" matches the "shared url"

@video @share-train
  Scenario: Social Share Train: Twitter link opens share window
    Given that I am on a experience video page
    And I click on the "Twitter" share button
    Then the "corresponding share page" should open in a new window
      And the "url" matches the "shared url"

@video @share-train
  Scenario: Social Share Train: Email button opens share window
    Given that I am on a experience video page
    And I click on the "Email" share button
    Then the "corresponding share page" should open in a new window
      And the "url" matches the "shared url"

@video @share-train
  Scenario: Social Share Train: Comment button goes to comment tool window at bottom of page
    Given that I am on a experience video page
    And I click on the "Comment" share button
    Then the "comment tool box" appears
      And I can add a comment

@video @share-train
  Scenario: Social Share Train: Print button opens share window
    Given that I am on a experience video page
    And I click on the "Email" share button
    Then the "corresponding share page" should open in a new window
      And the "url" matches the "shared url"

@video @share-train
  Scenario: Social Share Train: Google link opens share window
    Given that I am on a experience video page
    And I click on the "Google" share button
    Then the "corresponding share page" should open in a new window
      And the "url" matches the "shared url"

@video @share-train
  Scenario: Social Share Train: LinkedIn link opens share window
    Given that I am on a experience video page
    And I click on the "LinkedIn" share button
    Then the "corresponding share page" should open in a new window
      And the "url" matches the "shared url"

@video @share-train
  Scenario: Social Share Train: Pinterest link opens share window
    Given that I am on a experience video page
    And I click on the "Pinterest" share button
    Then the "corresponding share page" should open in a new window
      And the "url" matches the "shared url"
