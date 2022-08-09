Feature: Login feature

  As a restrox user
  I want to login to my account
  So that i can manage my restaurant

  Scenario: Login with valid credentials
    Given the user has browsed the login page
    When the user enters username 'username' and password 'password' 
    Then the user must be in home page

  Scenario Outline: Login with invalid credentials
    Given the user has browsed the login page
    When the user enters username '<username>' and password '<password>' 
    Then the user must be in login page
    Examples:
        | username   | password   |
        | invalid    | invalid    |
        | invalid    | valid      |
        | valid      | invalid    |
