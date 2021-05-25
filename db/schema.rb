# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_24_213528) do

  create_table "beers", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "abv"
    t.decimal "ibu"
    t.decimal "volume"
    t.integer "boil_volume"
    t.string "mash_instruct"
    t.string "fermentation_instruct"
    t.text "food_pairing"
    t.text "tips"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.decimal "amount"
    t.string "unit"
    t.integer "beer_id"
    t.index ["beer_id"], name: "index_ingredients_on_beer_id"
  end

  add_foreign_key "ingredients", "beers"
end
