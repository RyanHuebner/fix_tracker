class CreateFoodLists < ActiveRecord::Migration
  def change
    create_table :food_lists do |t|
      t.integer :meal, default: 0
      t.references :day, index: true, foreign_key: true
      t.references :food_item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
