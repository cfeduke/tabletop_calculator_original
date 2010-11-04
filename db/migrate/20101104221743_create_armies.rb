class CreateArmies < ActiveRecord::Migration
  def self.up
    create_table :armies do |t|
      t.string :name
      t.text :description
      t.integer :point_total

      t.timestamps
    end
  end

  def self.down
    drop_table :armies
  end
end
