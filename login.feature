Feature: Login feature

As a 
I want to
So that i 

Scenario: Login with valid credentials
Given the user has browsed the login page
When the user enters username 'username' and password 'password'
Then the user must be in home page

Scenario Outline: Login with invalid credentials
Given the user has browsed the login page
When the user enters username '<variable-1>' and password '<variable-2>'
Then the user must be in login page
Examples:
    | variable-1 | variable-2 |
    |valid | invaild|
    |invaild | valid|
    |invalid| invalid|