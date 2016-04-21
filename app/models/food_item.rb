class FoodItem < ActiveRecord::Base

    has_many :food_lists
    has_many :days, :through => :food_lists, :source => :food_lists
    
    before_destroy :ensure_not_referenced_by_any_food_list

    validates :name, presence: true, length: {minimum: 3, maximum: 40}
    validates :container_value, presence: true, 
        numericality: {greater_than_or_equal_to: 0}
    validates :container_color, presence: true    
    
    enum container_color: [:green, :purple, :red, :yellow, :blue, :orange, 
        :tbsp, :free]
        
    private
    
    def ensure_not_referenced_by_any_food_list
        if food_lists.empty?
            return true
        else
            errors.add(:base, 'Cannot remove food because it is contained in meal records.')
            return false
        end    
    end

end
