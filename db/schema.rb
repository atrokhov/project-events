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

ActiveRecord::Schema.define(version: 20180427145838) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "primecategory_id"
    t.index ["primecategory_id"], name: "index_categories_on_primecategory_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "course"
    t.integer "price_of_course"
    t.string "currency"
    t.text "description_of_course"
    t.text "teachers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.bigint "subcategory_id"
    t.bigint "primecategory_id"
    t.date "date"
    t.time "time"
    t.index ["category_id"], name: "index_items_on_category_id"
    t.index ["primecategory_id"], name: "index_items_on_primecategory_id"
    t.index ["subcategory_id"], name: "index_items_on_subcategory_id"
  end

  create_table "primecategories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subcategories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.index ["category_id"], name: "index_subcategories_on_category_id"
  end

  add_foreign_key "categories", "primecategories"
  add_foreign_key "items", "categories"
  add_foreign_key "items", "primecategories"
  add_foreign_key "items", "subcategories"
  add_foreign_key "subcategories", "categories"
end
