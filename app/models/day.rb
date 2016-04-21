class Day < ActiveRecord::Base
  belongs_to :program
  has_many :food_lists
  has_many :food_items, :through => :food_lists, :source => :food_lists
  
   validates :weight, presence: true, 
        numericality: {greater_than_or_equal_to: 0}
  
  enum workout: [:i_did_not_workout, :total_body_cardio_fix, :upper_fix, :lower_fix, 
        :pilates_fix, :cardio_fix, :dirty_30, :yoga_fix, :plyo_fix]
  
end
