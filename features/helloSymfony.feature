@javascript
Feature: Welcome to Symfony
  I need to be able to see welcome to Symfony message

  # My browser is in french !!
  Scenario: I can see Bienvenue sur l'application Symfony Demo
    When I go to "/"
    Then I should see "Bienvenue sur l'application Symfony Demo"

  # English locale
  Scenario: I can see Welcome to Symfony
    When I go to "/en"
    Then I should see "Welcome to the Symfony Demo application"

  Scenario: I can see 404 (with selenium we can't get status code)
    When I go to "/random"
    Then I should see "404"