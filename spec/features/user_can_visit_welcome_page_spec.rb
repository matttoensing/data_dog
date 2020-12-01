require 'rails_helper'

describe 'User can visit welcome page' do
  it 'and see a search for dog images' do
    visit root_path

    expect(page).to have_button("Fetch Dogs")
  end
end
