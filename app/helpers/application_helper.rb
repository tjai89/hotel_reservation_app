module ApplicationHelper
# free_hotel_rooms iterates throught ActiveRecord::Associations::CollectionProxy 
# and calculates the sum of free rooms
  def free_hotel_rooms(rooms)
    free = 0
    rooms.each do |r|
      if r.reserved == false
       free+=1
     end
    end
    free
  end
# reserved_hotel_rooms iterates throught ActiveRecord::Associations::CollectionProxy 
# and calculates the sum of reserved rooms
  def reserved_hotel_rooms(rooms)
    reserved = 0
    rooms.each do |r|
      if r.reserved == true
        reserved+=1
      end
    end
    reserved
  end  
end
