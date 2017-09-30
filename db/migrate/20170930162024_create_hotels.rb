class CreateHotels < ActiveRecord::Migration[5.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.integer :rooms_count	

      t.timestamps
    end
  end
end
