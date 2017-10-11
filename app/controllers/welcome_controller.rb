class WelcomeController < ApplicationController
  def index
    @hotels = Hotel.all
    # referring to https://stackoverflow.com/a/46561739/4909929 answer
    @hotels = Hotel.includes(:rooms).sort_by(&:free_rooms).reverse
  end
end
