# encoding: Windows-1251

Feature: Testing Translation from English To Russian in Google Translate

Scenario: Thanslate a word 'friend'
     Given I am on a Google Translate page in Firefox
      And Auto translation is 'ON'
      And I need to translate word 'friend'
     When I do nothing
     Then I should see 'друг'