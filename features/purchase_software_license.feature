Feature: Purchase license
  As a customer
  In order to use the software
  I can purchase a license

  Scenario:
    Given I find the software "Text Editor"
    When I purchase a license
    Then I can use "Text Editor"
