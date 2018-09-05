Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Then("there should be a Campaign titled {string} in the Database") do |expected_title|
    campaign = Campaign.find_by(title: expected_title)
    expect(campaign).not_to eq nil
end