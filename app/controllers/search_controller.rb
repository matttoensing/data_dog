class SearchController < ApplicationController
  def index
    @dogs = DogFacade.create_dogs(params[:number].to_i)
  end
end
