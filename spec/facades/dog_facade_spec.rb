require 'rails_helper'

RSpec.describe DogFacade do
  it 'can create dogs' do
    dogs = DogFacade.create_dogs(5)

    expect(dogs.count).to eq(5)
    expect(dogs.class).to eq(Array)
    expect(dogs.first).to be_an_instance_of(Dog)
  end
end
