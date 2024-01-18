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

ActiveRecord::Schema[7.0].define(version: 2024_01_15_205847) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.text "description"
    t.integer "page_count"
    t.integer "publication_year"
    t.bigint "membership_id"
    t.bigint "meeting_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meeting_id"], name: "index_books_on_meeting_id"
    t.index ["membership_id"], name: "index_books_on_membership_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", limit: 30, null: false
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_categories_on_name", unique: true
  end

  create_table "club_categories", force: :cascade do |t|
    t.bigint "club_id", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_club_categories_on_category_id"
    t.index ["club_id"], name: "index_club_categories_on_club_id"
  end

  create_table "club_genres", force: :cascade do |t|
    t.bigint "club_id", null: false
    t.bigint "genre_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_club_genres_on_club_id"
    t.index ["genre_id"], name: "index_club_genres_on_genre_id"
  end

  create_table "club_reading_levels", force: :cascade do |t|
    t.bigint "club_id", null: false
    t.bigint "reading_level_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_club_reading_levels_on_club_id"
    t.index ["reading_level_id"], name: "index_club_reading_levels_on_reading_level_id"
  end

  create_table "clubs", force: :cascade do |t|
    t.string "name", limit: 90, null: false
    t.text "description"
    t.date "founded", null: false
    t.integer "status", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_clubs_on_name", unique: true
  end

  create_table "genres", force: :cascade do |t|
    t.string "name", limit: 30, null: false
    t.text "description"
    t.boolean "active", default: true, null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_genres_on_category_id"
    t.index ["name"], name: "index_genres_on_name", unique: true
  end

  create_table "meetings", force: :cascade do |t|
    t.datetime "scheduled", null: false
    t.integer "duration", default: 60, null: false
    t.integer "venue", default: 0, null: false
    t.string "physical"
    t.string "virtual"
    t.bigint "club_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_meetings_on_club_id"
  end

  create_table "memberships", force: :cascade do |t|
    t.date "joined", null: false
    t.integer "status", default: 0, null: false
    t.integer "role", default: 0, null: false
    t.bigint "club_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_memberships_on_club_id"
    t.index ["user_id"], name: "index_memberships_on_user_id"
  end

  create_table "reading_levels", force: :cascade do |t|
    t.string "name", limit: 30
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_reading_levels_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.integer "meeting_preference", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "books", "meetings"
  add_foreign_key "books", "memberships"
  add_foreign_key "club_categories", "categories"
  add_foreign_key "club_categories", "clubs"
  add_foreign_key "club_genres", "clubs"
  add_foreign_key "club_genres", "genres"
  add_foreign_key "club_reading_levels", "clubs"
  add_foreign_key "club_reading_levels", "reading_levels"
  add_foreign_key "genres", "categories"
  add_foreign_key "meetings", "clubs"
  add_foreign_key "memberships", "clubs"
  add_foreign_key "memberships", "users"
end
