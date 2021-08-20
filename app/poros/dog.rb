class Dog
  attr_reader :image_url, :breed, :life_span, :temperament

  def initialize(info)
    @image_url = info[:image][:url]
    @breed = info[:name]
    @life_span = info[:life_span]
    @temperament = info[:temperament]
  end
end
