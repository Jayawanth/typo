# bundle exec cucumber features\merge_articles_admin.feature
Feature: Merge Articles for Admins
  As a blog admin
  In order to manage related blogs
  I should be able to merge specified articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And I am on the new article page
    When I fill in "article_title" with "Title1"
    And I fill in "article__body_and_extended_editor" with "Text1"
    And I press "Publish"
    And I am on the new article page
    When I fill in "article_title" with "Title2"
    And I fill in "article__body_and_extended_editor" with "Text2"
    And I press "Publish"

  Scenario: Merged article should contain text of both articles merged
    When I edit article with title "Title1"
    And I merge in article with title "Title2"
    Then I should see "Text1" and "Text2" in merged article

