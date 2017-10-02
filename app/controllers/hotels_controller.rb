class HotelsController < ApplicationController
  before_action :authenticate_user!
  def index
    @hotels = Hotel.all
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(hotel_params)
    @hotel.rooms_count.times do 
      @hotel.rooms.build
    end
    
    if @hotel.save
      redirect_to @hotel
    else
      render 'new'
    end           
  end

  def show
    @hotel = Hotel.find(params[:id])
  end

  def destroy
    @hotel = Hotel.find(params[:id])
    @hotel.destroy
    redirect_to hotels_url, notice: 'Hotel was successfully destroyed.'
  end

  private

  def hotel_params
    params.require(:hotel).permit(:name, :rooms_count)
  end
end
