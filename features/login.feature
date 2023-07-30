Feature: Test the functionality of the Login Page

  Scenario: Check that "No customer account found" message is displayed when the user tries to login with an unregistered email
    Given I am on the Login Page
    When I insert an unregistered email in the mail input
    When I insert a password in the password input
    When I click on the login button
    Then The main error message is displayed
    Then The error message contains "No customer account found" message

  Scenario: Check that "Please enter your email" message is displayed when the user enters empty email address
    Given I am the Login Page
    When I insert " " in the email input
    When I click on the login button
    Then Email error message is displayed
    Then Email error text contains "Please enter your email"
    