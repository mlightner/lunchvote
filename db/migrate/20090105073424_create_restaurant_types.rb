class CreateRestaurantTypes < ActiveRecord::Migration
  def self.up
    create_table :restaurant_types do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end

  def self.down
    drop_table :restaurant_types
  end
end
