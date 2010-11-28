class Unit < ActiveRecord::Base
  validates :name,
            :presence => true
  
  belongs_to :army
  has_many :unit_options, :dependent => :destroy
  
  accepts_nested_attributes_for :unit_options, :allow_destroy => :true, :reject_if => lambda { |a| a[:name].blank? }
  
  def total_points
    @unit_options.nil? ? 
      0 :
      @unit_options.inject(0) {|sum,unit_option| sum += unit_option.points || 0}
  end
end
