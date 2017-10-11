class Room < ApplicationRecord
	belongs_to :hotel, optional: true # avoiding rails 5.2 belongs_to error 
  accepts_nested_attributes_for :hotel

  # referring to https://stackoverflow.com/a/46561739/4909929 answer
  def self.reserved_count
    where(reserved: true).count
  end

  def self.free_count
    where(reserved: false).count
  end  
end
