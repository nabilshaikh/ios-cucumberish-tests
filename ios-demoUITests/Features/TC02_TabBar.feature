# Author: Nabil Shaikh

Feature: Tab bar
    
Scenario: Verify tab bar after clicking on Let's start! button
    Given User launch the app
    When User tap on Let's start! button
    Then User sees the tab in order of "Home, About, Profile, Help, Settings"
        
