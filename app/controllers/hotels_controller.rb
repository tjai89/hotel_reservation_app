class HotelsController < ApplicationController

  before_action :set_hotel, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :admin?, :except => [:show]
  
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
  end

  def destroy
    @hotel.destroy
    redirect_to hotels_url, notice: 'Hotel was successfully destroyed.'
  end

  private

  def hotel_params
    params.require(:hotel).permit(:name, :rooms_count)
  end

  def set_hotel
    @hotel = Hotel.find(params[:id])
  end
end
