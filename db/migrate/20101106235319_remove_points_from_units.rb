class RemovePointsFromUnits < ActiveRecord::Migration
  def self.up
    remove_column :units, :points
  end

  def self.down
    add_column :units, :points
  end
end
