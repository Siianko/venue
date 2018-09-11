@javascript
Feature: Admin can archive campaigns
    As an Admin
    In order to be able to remove Campaigns that are no longer relevant
    I would like to be able to archive the Campaigns

    Background:
        Given the following user exist
            | email          | role  |
            | admin@venue.se | admin |
        And the following campaigns exist
            | title                         | state    |
            | Veronica Maggio in Stockholm  | pending  |
            | Clare Cunningham              | accepted |
        And I am logged in as 'admin@venue.se'

    Scenario: Admin achives campaign that has been accepted
        When I am on the Campaign page for 'Veronica Maggio in Stockholm'
        And I click on 'Archive Campaign'
        Then the state of the campaign 'Veronica Maggio in Stockholm' should be 'archived'

    Scenario: Admin archives a fake campaign
        When I am on the Campaign page for 'Veronica Maggio in Stockholm'
        And I click on 'Archive Campaign'
        Then the state of the campaign 'Clare Cunningham' should be 'archived'