@javascript
Feature: I can access to admin back office

  Background:
    Given I go to "/fr/logout"
    And I go to "/fr"
    And I follow "Naviguer sur l'admin"
    And I fill in "Identifiant" with "jane_admin"
    And I fill in "Mot de passe" with "kitten"
    And I press "Connectez-vous"

  Scenario: I can connect to admin back office
    Then I should see "Liste des articles"

  Scenario: I can't connect to admin back office with simple user account
    When I go to "/fr/logout"
    And I go to "/fr"
    And I follow "Naviguer sur l'admin"
    And I fill in "Identifiant" with "john_user"
    And I fill in "Mot de passe" with "kitten"
    And I press "Connectez-vous"
    Then I should see "Erreur 403"
