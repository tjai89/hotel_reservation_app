class RoomsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  def index
    @rooms = Room.all
  end

  def show
  end

  def new
    @room = Room.new
  end

  def edit
  end

  def create
    @room = Room.new(room_params)
    @room.save

    if @room.save
      redirect_to @room, notice: 'Room was successfully reserved.'
    else
      render 'new'
    end        
  end

  private

  def room_params
    params.require(:room).permit(:reserved)
  end

  def set_room
    @room = Room.find(params[:id])
  end
end
