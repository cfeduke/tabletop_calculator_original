class AddFactionToArmies < ActiveRecord::Migration
  def self.up
    add_column :armies, :faction, :string
  end

  def self.down
    remove_column :armies, :faction
  end
end
