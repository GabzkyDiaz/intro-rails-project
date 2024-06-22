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

ActiveRecord::Schema[7.1].define(version: 2024_06_22_171926) do
  create_table "animes", force: :cascade do |t|
    t.string "title"
    t.text "synopsis"
    t.integer "episodes"
    t.float "rating"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authorships", force: :cascade do |t|
    t.integer "author_id", null: false
    t.string "authorshipable_type", null: false
    t.integer "authorshipable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_authorships_on_author_id"
    t.index ["authorshipable_type", "authorshipable_id"], name: "index_authorships_on_authorshipable"
  end

  create_table "light_novels", force: :cascade do |t|
    t.string "title"
    t.text "synopsis"
    t.integer "volumes"
    t.float "rating"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mangas", force: :cascade do |t|
    t.string "title"
    t.text "synopsis"
    t.integer "chapters"
    t.float "rating"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "authorships", "authors"
end
