class Day < ActiveRecord::Base
  has_many :meals
  belongs_to :program
  
  
  enum workout: [:i_did_not_workout, :total_body_cardio_fix, :upper_fix, :lower_fix, 
        :pilates_fix, :cardio_fix, :dirty_30, :yoga_fix, :plyo_fix]
  
end
