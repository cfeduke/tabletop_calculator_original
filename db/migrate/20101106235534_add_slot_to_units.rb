class AddSlotToUnits < ActiveRecord::Migration
  def self.up
    add_column :units, :slot, :string
  end

  def self.down
    remove_column :units, :slot
  end
end
