module ApplicationHelper
# rooms_reservation_status iterates throught ActiveRecord::Associations::CollectionProxy 
# and calculates the sum of free rooms aswell as a sum of reserved rooms
  def rooms_reservation_status(rooms)
    t = 0
    f = 0
    rooms.each do |r|
      r.reserved == true ? t+=1 : f+=1
    end
    "#{t} || #{f}"
  end
end
