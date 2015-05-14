# encoding: Windows-1251

Feature: Testing Translation from English To Russian in Google Translate

Scenario: Translate a phrase from English to Russian with all default settings
    Given I am on a Google Translate page in Firefox
     And I need to translate 'I love mum'
     When I do nothing
     Then I should see 'Я люблю маму'


Scenario: Translate a word from English to Russian when auto-translation is ON
     Given I am on a Google Translate page in Firefox
      And Auto translation is 'ON'
      And I need to translate 'friend'
     When I do nothing
     Then I should see 'друг'

Scenario: Translate a word when auto-translation is OFF and I click button 'Translate'
     Given I am on a Google Translate page in Firefox
      And Auto translation is 'OFF'
      And I need to translate 'friend'
     When I click button 'Translate'
     Then I should see 'друг'

Scenario: Translate a word when auto-translation is OFF and I don't click button 'Translate'
     Given I am on a Google Translate page in Firefox
      And Auto translation is 'OFF'
      And I need to translate 'friend'
     When I do nothing
     Then I should see ''


Scenario: Translate a phrase when auto-translation goes from ON to OFF and I click button 'Translate'
     Given I am on a Google Translate page in Firefox
       And Auto translation is 'ON'
       And Auto translation is 'OFF'
      And I need to translate 'friend'
     When I click button 'Translate'
     Then I should see 'друг'