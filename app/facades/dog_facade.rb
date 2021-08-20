class DogFacade
  def self.create_dogs(num)
    dog_service = DogApiService.new
    json = dog_service.get_dogs
    results = json.sample(num)

    results.map do |hash|
      Dog.new(hash)
    end
  end
end
