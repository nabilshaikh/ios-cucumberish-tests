# Author: Nabil Shaikh

Feature: Tab bar
    
Scenario: Verify tab bar after clicking on Let's start! button
    Given User launch the app
    When User tap on Let's start! button
    Then User sees the tab in order of "Home, About, Profile, Help, Settings"
    
Scenario Outline: Verify user's ability to switch between different sections of an app
    Given User launch the app
    And User clicks on Let's start! button
    When User taps on "<tab>"
    Then User sees the "<tab>" page
    
    Examples:
        | tab      |
        | About    |
        | Profile  |
        | Help     |
        | Settings |
