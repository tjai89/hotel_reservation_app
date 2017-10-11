class Hotel < ApplicationRecord
	has_many :rooms, dependent: :destroy
  accepts_nested_attributes_for :rooms


  # referring to https://stackoverflow.com/a/46561739/4909929 answer
  def reserved_rooms
    rooms.reserved_count
  end

  def free_rooms
    rooms.free_count
  end  
end
