Feature: Verify social share train & comment tool across all asset pages.
Verifying social train buttons - facebook, twitter, email, comment, print, google, linkedin and pinterest on asset pages
Verifying comment tool on asset pages

Background:
When I visit an Experience asset page

# Verify social train appears on assets
@story @gallery @video @share-train
  Scenario: Social Share Train: Buttons viewable (Facebook, Twitter, Email, Comments and Print)
    Given that I am on an experience asset page
    When I click on "<section_href>"
    Then I should see the share buttons "<button_name>"

    Examples:
    | section_href  |
    |    facebook   |
    |    twitter    |
    |    email      |
    |    comments   |
    |    print      |

@story @gallery @video @share-train
  Scenario: Social Share Train: Buttons viewable (Google, Linkedin and Pinterest)
    Given that I am on an experience asset page
    When I click on "<section_href2>"
    Then I should see the share buttons "<button2_name>"


    Examples:
    | section_href2 |
    |    googleplus |
    |    linkedin   |
    |    pinterest  |


# Verify each social media button opens a modal window and shares correct url on assets
@story @gallery @video @share-train
Scenario: Social Share Train: Verify social media opens and correct url is shared
  Given I am on "<url>"
    And I have the visited the following pages:
  Then the "corresponding share page" should open in a new window
    And the "url" matches the "shared url"
    Examples:
    | name    | url  |
    | gallery | /picture-gallery/photo-galleries/2015/02/11/the-48-most-expensive-hotel-rooms/23236355/ |
    | video   | /videos//videos/2014/12/10/20190387/ |
    | story   | /story/theme-parks/2015/02/19/12-free-things-to-do-at-walt-disney-world/23624675/ |


@comment @share-train
  Scenario: Social Share Train: Comment button goes to comment tool window at bottom of page
    Given that I am on an experience "/story/theme-parks/2015/02/03/disneyland-diamond-60th-anniversary/22811957/"
    And I click on the "Comment" share button
    Then the "comment form" appears
      And the "comment confirm button" appears 
