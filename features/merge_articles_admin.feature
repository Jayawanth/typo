# bundle exec cucumber features\merge_articles_admin.feature
Feature: Merge Articles for Admins
  As a blog admin
  In order to manage related blogs
  I should be able to merge specified articles

  Background:
    Given the blog is set up

  Scenario: Merge option exists for admin
    Given I am logged into the admin panel
    And I am on the new article page
    When I fill in "article_title" with "AdminFoobar"
    And I fill in "article__body_and_extended_editor" with "AdminLorem Ipsum"
    And I press "Publish"
    And I follow "AdminFoobar"
    Then I should see "Merge Articles"

