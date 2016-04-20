# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160420195248) do

  create_table "days", force: :cascade do |t|
    t.integer  "program_id"
    t.decimal  "weight"
    t.integer  "workout",        default: 0
    t.integer  "water_consumed", default: 0
    t.integer  "green_used"
    t.integer  "purple_used"
    t.integer  "red_used"
    t.integer  "yellow_used"
    t.integer  "blue_used"
    t.integer  "orange_used"
    t.integer  "tbsp_used"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "food_items", force: :cascade do |t|
    t.string   "name"
    t.string   "container_color", default: "0"
    t.string   "container_value"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "programs", force: :cascade do |t|
    t.decimal  "start_weight"
    t.integer  "water_goal"
    t.integer  "green_limit"
    t.integer  "purple_limit"
    t.integer  "red_limit"
    t.integer  "yellow_limit"
    t.integer  "blue_limit"
    t.integer  "orange_limit"
    t.integer  "tbsp_limit"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
