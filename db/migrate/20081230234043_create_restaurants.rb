class CreateRestaurants < ActiveRecord::Migration
  def self.up
    create_table :restaurants do |t|
      t.integer :restaurant_type_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :restaurants
  end
end
