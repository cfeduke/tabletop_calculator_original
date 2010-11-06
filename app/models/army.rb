class Army < ActiveRecord::Base
  validates :name, 
            :presence => true,
            :uniqueness => true
  validates :point_total, 
            :presence => true, 
            :numericality => { :greater_than_or_equal_to => 0 }
end
