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

ActiveRecord::Schema[7.0].define(version: 2022_09_04_202221) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.bigint "creator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_categories_on_creator_id"
  end

  create_table "category_spends", force: :cascade do |t|
    t.bigint "categories_id", null: false
    t.bigint "spends_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categories_id"], name: "index_category_spends_on_categories_id"
    t.index ["spends_id"], name: "index_category_spends_on_spends_id"
  end

  create_table "spends", force: :cascade do |t|
    t.bigint "spender_id", null: false
    t.string "name"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spender_id"], name: "index_spends_on_spender_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "categories", "users", column: "creator_id"
  add_foreign_key "category_spends", "categories", column: "categories_id"
  add_foreign_key "category_spends", "spends", column: "spends_id"
  add_foreign_key "spends", "users", column: "spender_id"
end
