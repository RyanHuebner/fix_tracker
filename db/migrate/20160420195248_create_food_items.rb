class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :name
      t.string :container_color, default: 0
      t.string :container_value

      t.timestamps null: false
    end
  end
end
