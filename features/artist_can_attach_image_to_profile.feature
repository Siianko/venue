@javascript
Feature: Artist can attach image to her profile
    As an Artist
    In order to promote ourself/myself
    We/I would like to be able to attach images to our/my profile
     
     Background:
        Given the following user exist
        | email           | password   |
        | artist@venue.se | my-pasword |
        And I am logged in as 'artist@venue.se'

    Scenario:
        And I am on the 'landing' page
        And I click on 'New Campaign'
        Then I should see the 'Create a New Campaign' form
        And I fill in 'Title' with 'Clare Cunningham'
        And I fill in 'Description' with 'Dubbed as having a vocal register similar to Adele'
        And I fill in 'Location' with 'Stockholm'
        And I attach an profile_image to the campaign
        And I attach an background_image to the campaign
        And I fill in ticket fields
        And I click on 'Launch Campaign'
        And I wait 1 second
        And the campaign 'Clare Cunningham' is accepted
        Then I should be redirected to the Campaign page for 'Clare Cunningham'
        And I wait 1 second
        And I should see the 'dummy.jpg' image



        When I am on the 'landing' page
        And I click on 'Create Artist Profile'
        And I fill in 'Artist name' with 'Kanye West'
        And I fill in 'Genre' with 'Hip-Hop'
        And I fill in 'City' with 'Los Angeles'
        And I fill in 'Artist Description' with 'Born in Atalanta, raised in Chicago'
        And I fill in 'Facebook' with 'https://www.facebook.com/TheKanyewestPage/'
        And I fill in 'Instagram' with 'https://www.instagram.com/kanyewest'
        And I fill in 'Twitter' with 'https://twitter.com/kanyewest'
        And I fill in 'Youtube' with 'https://www.youtube.com/'
        And I fill in 'Website' with 'https://www.kanyewest.com/'
        And I fill in 'Spotify' with 'https://open.spotify.com/artist/5K4W6rqBFWDnAN6FQUkS6x?si=4zpontE-TrmF46FSVJcNHA'
        And I attach an profile_image to the campaign
        And I attach an background_image to the campaign
        And I click on 'Create Profile'
        And I wait 1 second
        Then I should see 'Artist page successfully created'
        And I should be redirected to the Artist page for 'Kanye West'
        And an artist profile page with the name 'Kanye West' should have been created
        And I should see the 'profile_image.jpg' image
        And I should see the 'background_image.jpg' image   