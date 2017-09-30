class Room < ApplicationRecord
	belongs_to :hotel, optional: true
end
