class CreateLunches < ActiveRecord::Migration
  def self.up
    create_table :lunches do |t|
      t.integer :restaurant_id
      t.text :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :lunches
  end
end
