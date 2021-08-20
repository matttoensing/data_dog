require 'rails_helper'

RSpec.describe DogApiService do
  it 'can fetch dogs' do
    dog_service = DogApiService.new

    first_dog = dog_service.get_dogs.first

    expect(first_dog).to have_key(:image)
    expect(first_dog).to have_key(:name)
    expect(first_dog).to have_key(:life_span)
    expect(first_dog).to have_key(:temperament)
  end
end
