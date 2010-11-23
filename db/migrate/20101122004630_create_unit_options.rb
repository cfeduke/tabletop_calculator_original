class CreateUnitOptions < ActiveRecord::Migration
  def self.up
    create_table :unit_options do |t|
      t.string :name
      t.references :unit
      t.integer :points

      t.timestamps
    end
  end

  def self.down
    drop_table :unit_options
  end
end
