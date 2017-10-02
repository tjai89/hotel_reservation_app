class WelcomeController < ApplicationController
  def index
    @hotels = Hotel.all.order(rooms_count: :desc)
  end
end
