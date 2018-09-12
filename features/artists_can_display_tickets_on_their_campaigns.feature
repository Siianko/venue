@javascript
Feature: Artists can display tickets on their Campaigns
    As an Artist, 
    In order to fund my Events, 
    I would like to sell tickets on the Campaign page.

    Background:
        Given the following user exist
        | email          | role   | password   |
        | user@artist.se | artist | my-pasword |
        And I am logged in as 'user@artist.se'
        And I am on the 'landing' page
        
    Scenario:
        When I click on 'New Campaign'
        And I fill in 'Title' with 'Clare Cunningham'
        And I fill in 'Description' with 'Dubbed as having a vocal register similar to Adele'
        And I fill in 'Location' with 'Stockholm'
        And I fill in 'Fixed ticket price' with '100'
        And I fill in 'Ticket name' with 'Sure thing'
        And I attach an image to the campaign
        And I click on 'Launch Campaign'
        Then there should be a Ticket named 'Sure thing' in the Database 
        And I should see 'Sure thing: 100' in ticket info