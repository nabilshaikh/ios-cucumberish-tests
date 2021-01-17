# Author: Nabil Shaikh

Feature: Welcome page

Scenario: Verify landing page of an app
    Given User launch the app
    Then User sees the landing page which contains the text as "WELCOME!"
    
Scenario: Verify button on landing page
    Given User launch the app
    And User sees the "Click on below button to proceed" followed by a button
    When User tap on Let's start! button
    Then User should navigate to Home page
