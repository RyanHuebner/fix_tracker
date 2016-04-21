class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :name
      t.integer :container_color, default: 0
      t.integer :container_value

      t.timestamps null: false
    end
  end
end
