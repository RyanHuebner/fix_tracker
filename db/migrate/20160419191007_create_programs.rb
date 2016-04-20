class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.decimal :start_weight
      t.integer :water_goal
      t.integer :green_limit
      t.integer :purple_limit
      t.integer :red_limit
      t.integer :yellow_limit
      t.integer :blue_limit
      t.integer :orange_limit
      t.integer :tbsp_limit

      t.timestamps null: false
    end
  end
end
