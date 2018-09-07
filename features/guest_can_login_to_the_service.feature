@javascript
Feature: Guest can login to the service
    As a Guest,
    In order to support the campaigns,
    I would like to login to the service

    PT story: https://www.pivotaltracker.com/story/show/160308818

    Background:
        Given the following user exist
        |email           |password   |
        |thomas@venue.se |password   |

    Scenario: Guest can login to the service [Happy path]
        And I am on the 'landing' page
        And I click on 'Log in'
        And I wait 1 second
        Then I should see 'Log in with Email address'
        And I fill in 'Email address' with 'thomas@venue.se'
        And I fill in 'Password' with 'password'
        And I click on 'Login'
        Then I should see 'Signed in successfully.'

     Scenario: Guest can logout from the service 
        Given I am logged in as 'thomas@venue.se'
        And I am on the 'landing' page 
        When I click on 'Sign out'
        Then I should see 'Signed out successfully.'
        And I am on the 'landing' page

