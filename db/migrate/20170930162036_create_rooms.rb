class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.boolean :reserved, :default => false
      t.belongs_to :hotel, index: true
      
      t.timestamps
    end
  end
end
