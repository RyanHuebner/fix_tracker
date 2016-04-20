class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.references :program, foreign_key: true
      t.decimal :weight
      t.integer :workout, default: 0
      t.integer :water_consumed, default: 0
      t.integer :green_used
      t.integer :purple_used
      t.integer :red_used
      t.integer :yellow_used
      t.integer :blue_used
      t.integer :orange_used
      t.integer :tbsp_used

      t.timestamps null: false
    end
  end
end
