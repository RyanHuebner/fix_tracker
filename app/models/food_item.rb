class FoodItem < ActiveRecord::Base

    validates :name, presence: true, length: {minimum: 3, maximum: 20}
    validates :container_value, presence: true, 
        numericality: {greater_than_or_equal_to: 0}
    validates :container_color, presence: true    
    
    enum container_color: [:green, :purple, :red, :yellow, :blue, :orange, 
        :tbsp, :free]

end
