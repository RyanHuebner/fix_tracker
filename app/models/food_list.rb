class FoodList < ActiveRecord::Base
  belongs_to :day
  belongs_to :foodItem
  
  enum meals: [:breakfast, :lunch, :dinner, :snack]
  
end
