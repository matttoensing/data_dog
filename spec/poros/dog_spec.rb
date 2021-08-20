require 'rails_helper'

RSpec.describe Dog do
  it 'exists and has attributes' do
    attributes = {
    bred_for: "Small rodent hunting, lapdog",
    breed_group: "Toy",
    id: 1,
    image: {
      height: 1199,
      id: "BJa4kxc4X",
      url: "https://cdn2.thedogapi.com/images/BJa4kxc4X.jpg",
      width: 1600
    },
    life_span: "10 - 12 years",
    name: "Affenpinscher",
    origin: "Germany, France",
    reference_image_id: "BJa4kxc4X",
    temperament: "Stubborn, Curious, Playful"}

    dog = Dog.new(attributes)

    expect(dog).to be_an_instance_of(Dog)
    expect(dog.image_url).to eq("https://cdn2.thedogapi.com/images/BJa4kxc4X.jpg")
    expect(dog.breed).to eq("Affenpinscher")
    expect(dog.life_span).to eq("10 - 12 years")
    expect(dog.temperament).to eq("Stubborn, Curious, Playful")
  end
end
#   - image
#   - breed name
#   - life span
#   - temperament
