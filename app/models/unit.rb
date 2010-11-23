class Unit < ActiveRecord::Base
  validates :name,
            :presence => true
  
  belongs_to :army
  has_many :unit_options, :dependent => :destroy
  
  accepts_nested_attributes_for :unit_options, :allow_destroy => :true, :reject_if => lambda { |a| a[:name].blank? }
end
