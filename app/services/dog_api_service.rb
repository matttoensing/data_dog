class DogApiService < BaseService
  def get_dogs
    response = conn("https://api.thedogapi.com/v1/breeds").get do |f|
      f.headers["x-api-key"] = ENV['dog_key']
    end

    get_json(response)
  end
end
