class FoodItem < ActiveRecord::Base

    validates :name, presence: true, length: {minimum: 3, maximum: 20}
    validates :container_value, presence: true, 
        numericality: {greater_than_or_equal_to: 0}
    
    enum container_color: [:green, :purple, :red, :yellow, :blue, :orange, 
        :tbsp, :free]

end
