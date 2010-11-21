class Army < ActiveRecord::Base
  validates :name, 
            :presence => true,
            :uniqueness => true # later this will become unique per author
  validates :point_total, 
            :presence => true, 
            :numericality => { :greater_than_or_equal_to => 0 }
  
  has_many :units, :dependent => :destroy
  
  accepts_nested_attributes_for :units, :allow_destroy => :true, :reject_if => lambda { |a| a[:name].blank? }
  end
