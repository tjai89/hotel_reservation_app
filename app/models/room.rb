class Room < ApplicationRecord
	belongs_to :hotel, optional: true # avoiding rails 5.2 belongs_to error 
  accepts_nested_attributes_for :hotel
end
