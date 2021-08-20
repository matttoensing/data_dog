require 'rails_helper'

describe 'User can visit welcome page' do
  it 'and see a search for dog images' do
    visit root_path

    expect(page).to have_button("Fetch Dogs")
  end

  it 'can fetch dogs' do
    visit root_path

    fill_in :number, with: 5
    click_on "Fetch Dogs"

    expect(current_path).to eq("/search")
    expect(page).to have_content("5 Results")

    expect(page).to have_css('.dog', count: 5)

    within(first('.dog')) do
      expect(page).to have_css('.image')
      expect(page).to have_css('.breed')
      expect(page).to have_css('.life_span')
      expect(page).to have_css('.temperament')
    end

    # As a user,
    # When I visit the "/"
    # And I enter "5" into the number field
    # And I click on "Fetch Dogs"
    # Then my path should be "/search"
    # And I should see a message "5 Results"
    # And I should see the following information for each result:
    #   - image
    #   - breed name
    #   - life span
    #   - temperament
  end
end
